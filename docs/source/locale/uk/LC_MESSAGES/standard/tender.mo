��    O      �                              ?     X     p     �       2   '     Z     s     �     �  6   �     �  C   	     M     g     t     �  /   �     �     �       $   0      U     v     �     �  /   �  .   	  #   1	  !   U	  I   w	  "   �	  5   �	     
     !
     @
     V
     ]
  s   z
  &   �
  :     S   P  B   �  L   �  "   4  $   W  �   |  �   	  2   �  C        F     ^  &   x     �     �  ]   �     -     A  %   `  3   �     �     �  !   �     �  9        B     F  U   b  F   �  �   �  Q   �  �   �  �   e  @     ~   Q  ?   �  �         /     .   L  &   {  %   �    �  ?   �  Z     .   x  X   �  @      :   A  M   |  :   �  �     2   �     �  .   �  *     H   6  .     +   �  )   �  3     /   8  .   h  *   �  .   �  ]   �  V   O  C   �  =   �  �   (  9   �  J   �  
   4  8   ?      x     �  @   �  �   �  M   �   k   �   �   P!  �   �!  �   a"  D   �"  F   ?#  �   �#  C  L$  Y   �%  �   �%     p&     �&  3   �&     �&     �&  �   '  +   �'  -   �'  C    (  ]   D(     �(  
   �(  Y   �(  $   %)  l   J)     �)  &   �)  �   �)  n   u*  �   �*  v   �+  �   ,  (  �,  �   #.  �   �.  \   �/   :ref:`Guarantee` :ref:`ProcuringEntity`, required :ref:`period`, read-only :ref:`period`, required :ref:`value`, required A list of all bids placed in the tender with information about tenderers, their proposal and other qualification documentation. A web address for view auction. All qualifications (disqualifications and awards). Auction period (auction) Awarding process period. Bid guarantee Cancelled tender (cancelled) Complaints to tender conditions and their resolutions. Complete tender (complete) Contains 1 object with `active` status in case of cancelled Tender. Contains all tender lots. Current time Detailed description of tender. Features of tender. Historical changes to Tender object properties. List of :ref:`Contract` objects List of :ref:`award` objects List of :ref:`bid` objects List of :ref:`cancellation` objects. List of :ref:`complaint` objects List of :ref:`document` objects List of :ref:`lot` objects. List of :ref:`question` objects List of :ref:`revision` objects, auto-generated List that contains single item being procured. Organization conducting the tender. Period when Auction is conducted. Period when bids can be submitted. At least `endDate` has to be provided. Period when questions are allowed. Questions to ``procuringEntity`` and answers to them. Schema Standstill period (standstill) Status of the Tender. Tender Tendering period (tendering) The :ref:`cancellation` object describes the reason of tender cancellation contains accompanying documents  if any. The Tender dates should be sequential: The minimal step of auction (reduction). Validation rules: The name of the tender, displayed in listings. You can include the following items: The tender identifier to refer tender to in "paper" documentation. Total available tender budget. Bids greater then ``value`` will be rejected. Unsuccessful tender (unsuccessful) Winner qualification (qualification) ``clarificationsUntil`` - time before which answers for questions and claims can be provided. After this time the procedure will be blocked. ``invalidationDate`` - date of the last tender conditions modification, when all bid proposals became `invalid`. Broker (eMall) should take action in order for bids to be activated or re-submitted. `amount` should be less then `Tender.value.amount` `currency` should either be absent or match `Tender.value.currency` `enquiryPeriod.endDate` `enquiryPeriod.startDate` `enquiryPeriod` has additional fields: `tenderPeriod.endDate` `tenderPeriod.startDate` `valueAddedTaxIncluded` should either be absent or match `Tender.value.valueAddedTaxIncluded` item being procured list of :ref:`Feature` objects list of :ref:`item` objects, required periodicity of the tender (annual, quarterly, etc.) some other info string string, auto-generated, read-only string, multilingual tender code (in procuring organization management system) url value: ``aboveThresholdUA`` |ocdsDescription| A list of all the companies who entered submissions for the tender. |ocdsDescription| All documents and attachments related to the tender. |ocdsDescription| TenderID should always be the same as the OCID. It is included to make the flattened data structure more convenient. |ocdsDescription| The date or period on which an award is anticipated to be made. |ocdsDescription| The entity managing the procurement, which may be different from the buyer who is paying / using the items being procured. |ocdsDescription| The goods and services to be purchased, broken into line items wherever possible. Items should not be duplicated, but a quantity of 2 specified instead. |ocdsDescription| The period during which enquiries may be made. |ocdsDescription| The period when the tender is open for submissions. The end date is the closing date for tender submissions. |ocdsDescription| The total estimated value of the procurement. Project-Id-Version: openprocurement.api 0.10
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2014-11-24 18:25+0200
PO-Revision-Date: 2016-09-22 13:22+0200
Last-Translator: Zoriana Zaiats <sorenabell@quintagroup.com>
Language: uk
Language-Team: Ukrainian <support@quintagroup.com>
Plural-Forms: nplurals=3; plural=(n%10==1 && n%100!=11 ? 0 : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.2.0
 :ref:`Guarantee` :ref:`ProcuringEntity`, обов’язково :ref:`period`,  лише для читання :ref:`period`, обов’язково :ref:`value`, обов’язково Список усіх пропозицій зроблених під час закупівлі разом з інформацією про учасників закупівлі, їхні пропозиції та інша кваліфікаційна документація. Веб-адреса для перегляду аукціону. Усі  кваліфікації (дискваліфікації та переможці). Період аукціону (аукціон) Період, коли відбувається визначення переможця. Забезпечення тендерної пропозиції Відмінена закупівля (відмінена) Скарги на умови закупівлі та їх вирішення. Завершена закупівля (завершена) Містить 1 об’єкт зі статусом `active` на випадок, якщо Закупівлю буде відмінено. Містить всі лоти закупівлі. Поточний час Детальний опис закупівлі Властивості закупівлі. Зміни властивостей об’єктів Закупівлі Список об’єктів :ref:`Contract` Список об’єктів :ref:`award` Список об’єктів :ref:`bid` Список об’єктів :ref:`cancellation`. Список об’єктів :ref:`complaint` Список об’єктів :ref:`document` Список об’єктів :ref:`lot`. Список об’єктів :ref:`question` Список об’єктів :ref:`revision`, генерується автоматично Список, який містить елемент, що закуповується. Організація, що проводить закупівлю. Період, коли проводиться аукціон. Період, коли подаються пропозиції. Повинна бути вказана хоча б `endDate` дата. Період, коли дозволені питання. Питання до ``procuringEntity`` і відповіді на них. Схема Період блокування (блокування) Статус Закупівлі. Tender Очікування пропозицій (пропозиції) Об’єкт :ref:`cancellation` описує причину скасування закупівлі та надає відповідні документи, якщо такі є. Дати закупівлі повинні бути послідовними: Мінімальний крок аукціону (редукціону). Правила валідації: Назва тендера, яка відображається у списках. Можна включити такі елементи: Ідентифікатор закупівлі, щоб знайти закупівлю у  "паперовій" документації Повний доступний бюджет закупівлі. Пропозиції, що більші за ``value`` будуть відхилені. Закупівля не відбулась (не відбулась) Кваліфікація переможця (кваліфікація) ``clarificationsUntil``- час, до якого можна давати відповіді на запитання та вимоги, після якого блокується процедура. ``invalidationDate`` - це дата останньої зміни умов, коли всі подані цінові пропозиції перейшли в стан `invalid`. Відповідно необхідні дії майданчика щодо активації чи переподачі пропозицій. Значення `amount` повинно бути меншим за `Tender.value.amount` Значення `currency` повинно бути або відсутнім, або співпадати з `Tender.value.currency` `enquiryPeriod.endDate` `enquiryPeriod.startDate` `enquiryPeriod` має додаткові поля: `tenderPeriod.endDate` `tenderPeriod.startDate` Значення `valueAddedTaxIncluded` повинно бути або відсутнім, або співпадати з `Tender.value.valueAddedTaxIncluded` товар, що закуповується список об’єктів :ref:`Feature` список об’єктів :ref:`item`, обов’язково періодичність закупівлі (щороку, щокварталу, і т.д.) інша інформація рядок рядок, генерується автоматично, лише для читання рядок, багатомовний код закупівлі (у системі управління організації-замовника) URL-адреса значення: ``aboveThresholdUA`` |ocdsDescription| Список усіх компаній, які подали заявки для участі у закупівлі. |ocdsDescription| Всі документи та додатки пов’язані із закупівлею. |ocdsDescription| TenderID повинен завжди співпадати з OCID. Його включають, щоб зробити структуру даних більш зручною. |ocdsDescription| Дата або період, коли очікується визначення переможця. |ocdsDescription| Об’єкт, що управляє закупівлею. Він не обов’язково є покупцем, який платить / використовує закуплені елементи. |ocdsDescription| Товари та послуги, що будуть закуплені, поділені на спискові елементи, де це можливо. Елементи не повинні дублюватись, замість цього вкажіть кількість 2. |ocdsDescription| Період протягом якого можна задавати питання про умови закупівлі. |ocdsDescription| Період, коли закупівля відкрита для подачі пропозицій. Кінцева дата - це дата, коли перестають прийматись пропозиції. |ocdsDescription| Загальна кошторисна вартість закупівлі. 