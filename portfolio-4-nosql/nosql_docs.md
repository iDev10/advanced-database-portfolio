#### **# Portfolio 4: NoSQL and Advanced Data Models**



\## 1. Overview

This exercise explores MongoDB as a NoSQL document database using the TrustSend25 logistics case study.



Database: `trustsend25\_nosql`  

Collection: `deliveries`  

Platform: MongoDB Community Server and MongoDB Compass.



\## 2. Document Modelling

Two delivery documents were created. Each document stores related customer, hub, and sweeper information as embedded documents.



This approach keeps commonly accessed delivery information together and reduces the need for separate collection lookups.



\## 3. CRUD and Query Operations

\- Created the `deliveries` collection.

\- Inserted two delivery documents.

\- Retrieved documents using delivery-status filters.

\- Tested filters for `Delivered` and `In Transit`.



\## 4. Aggregation

A `$group` aggregation stage was used to group deliveries by `delivery\_status`.



The `$sum` operator calculated the number of deliveries and the total delivery fees for each status.



Expected results:

|**Delivery status**|**Total deliveries**|**Total fees**|
|-|-|-|
|In Transit|1|2500|
|Delivered|1|3500|





\## 5. Embedding and Relational Modelling

Unlike the relational design in Portfolio 1, the MongoDB model embeds customer, hub, and sweeper details inside each delivery document.



Embedding makes related information available together, but it can duplicate data when the same customer, hub, or sweeper appears in multiple delivery documents. Changes to duplicated information may therefore require updates across several documents.



\## 6. Conclusion

The exercise demonstrated document creation, embedded data modelling, filtering, and aggregation in MongoDB. It also highlighted differences between relational database structures and document-oriented NoSQL models.



