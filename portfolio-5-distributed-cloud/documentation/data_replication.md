Portfolio 5: Distributed and Cloud Database Exercise

Case Study

TrustSend25 is a simulated logistics and delivery platform connecting customers, delivery hubs and dispatch sweepers. Its database supports customer records, delivery requests, hub and sweeper assignments, delivery tracking and delivery fee management.

 MongoDB Replica Set Configuration

A three-member MongoDB replica set named `trustsend25RS` was configured locally.

|**Node**|**Address**|**Role**|
|-|-|-|
|Node 1|127.0.0.1:27018|Primary|
|Node 2|127.0.0.1:27019|Secondary|
|Node 3|127.0.0.1:27020|Secondary|

Replication Test
A delivery document with delivery ID 5001 was inserted into the "trustsend25\_distributed" database on the primary node. The document contained customer, hub, sweeper, delivery status and delivery fee information. The record was subsequently queried on both secondary nodes and successfully retrieved.

Results
- Replica set successfully initiated.
- One primary and two secondary members elected.
- Primary write acknowledged successfully.
- Delivery record verified on Node 2.
- Delivery record verified on Node 3.

Availability and Consistency
MongoDB replication maintains copies of data across replica-set members. If the primary becomes unavailable, eligible secondary members can participate in an election to select a new primary.
Replication is asynchronous by default, so a recently acknowledged write may not immediately be visible on every secondary. Write concern and read concern settings influence durability and consistency guarantees.



