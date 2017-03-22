# -*- coding: utf-8 -*-
from openprocurement.tender.belowthreshold.views.tender import TenderResource
from openprocurement.tender.openua.validation import validate_patch_tender_ua_data
from openprocurement.tender.core.validation import (
    validate_tender_status_update_in_terminated_status,
    validate_tender_period_extension
)
from openprocurement.tender.openua.utils import (
    check_status,
)
from openprocurement.api.utils import (
    json_view,
    context_unpack,
    get_now
)
from openprocurement.api.validation import ViewPermissionValidationError
from openprocurement.tender.core.utils import (
    save_tender,
    apply_patch,
    optendersresource
)
from openprocurement.tender.openua.constants import TENDERING_EXTRA_PERIOD


@optendersresource(name='aboveThresholdUA:Tender',
                   path='/tenders/{tender_id}',
                   procurementMethodType='aboveThresholdUA',
                   description="Open Contracting compatible data exchange format. See http://ocds.open-contracting.org/standard/r/master/#tender for more info")
class TenderUAResource(TenderResource):
    """ Resource handler for TenderUA """

    @json_view(content_type="application/json", validators=(validate_patch_tender_ua_data, ), permission='edit_tender')
    def patch(self):
        """Tender Edit (partial)

        For example here is how procuring entity can change number of items to be procured and total Value of a tender:

        .. sourcecode:: http

            PATCH /tenders/4879d3f8ee2443169b5fbbc9f89fa607 HTTP/1.1
            Host: example.com
            Accept: application/json

            {
                "data": {
                    "value": {
                        "amount": 600
                    },
                    "itemsToBeProcured": [
                        {
                            "quantity": 6
                        }
                    ]
                }
            }

        And here is the response to be expected:

        .. sourcecode:: http

            HTTP/1.0 200 OK
            Content-Type: application/json

            {
                "data": {
                    "id": "4879d3f8ee2443169b5fbbc9f89fa607",
                    "tenderID": "UA-64e93250be76435397e8c992ed4214d1",
                    "dateModified": "2014-10-27T08:12:34.956Z",
                    "value": {
                        "amount": 600
                    },
                    "itemsToBeProcured": [
                        {
                            "quantity": 6
                        }
                    ]
                }
            }

        """
        try:
            tender = self.context
            validate_tender_status_update_in_terminated_status(self.request, tender)
            data = self.request.validated['data']

            if self.request.authenticated_role == 'tender_owner' and self.request.validated['tender_status'] == 'active.tendering':
                if 'tenderPeriod' in data and 'endDate' in data['tenderPeriod']:
                    self.request.validated['tender'].tenderPeriod.import_data(data['tenderPeriod'])
                    validate_tender_period_extension(self.request, tender, TENDERING_EXTRA_PERIOD)
                    self.request.validated['tender'].initialize()
                    self.request.validated['data']["enquiryPeriod"] = self.request.validated['tender'].enquiryPeriod.serialize()
        except ViewPermissionValidationError:
            return
        else:
            apply_patch(self.request, save=False, src=self.request.validated['tender_src'])
            if self.request.authenticated_role == 'chronograph':
                check_status(self.request)
            elif self.request.authenticated_role == 'tender_owner' and tender.status == 'active.tendering':
                # invalidate bids on tender change
                tender.invalidate_bids_data()
            save_tender(self.request)
            self.LOGGER.info('Updated tender {}'.format(tender.id),
                        extra=context_unpack(self.request, {'MESSAGE_ID': 'tender_patch'}))
            return {'data': tender.serialize(tender.status)}
