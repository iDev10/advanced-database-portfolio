Portfolio 4: NoSQL and Advanced Data Models

This exercise explores MongoDB as a NoSQL document database using the TrustSend25 logistics case study.
Database: trustsend25_nosql
Collection: deliveries 
Platform: MongoDB Community Server and MongoDB Compass.

Document Modelling
Two delivery documents were created. Each document stores related customer, hub, and sweeper information as embedded documents. This approach keeps commonly accessed delivery information together and reduces the need for separate collection lookups.

CRUD and Query Operations
- Created the deliveries collection.
- Inserted two delivery documents.
- Retrieved documents using delivery-status filters.
- Tested filters for Delivered and In Transit.

Aggregation
A $group aggregation stage was used to group deliveries by delivery_status.
The $sum operator calculated the number of deliveries and the total delivery fees for each status.

Expected results:
|**Delivery status**|**Total deliveries**|**Total fees**|
|-|-|-|
|In Transit|1|2500|
|Delivered|1|3500|

The exercise demonstrated document creation, embedded data modelling, filtering, and aggregation in MongoDB. It also highlighted differences between relational database structures and document-oriented NoSQL models.


