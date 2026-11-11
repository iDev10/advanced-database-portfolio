#### **TrustSend25 Distributed DB: Sharding**



**1. Introduction**

To improve scalability and distribute data storage, TrustSend25 implemented MongoDB sharding. Sharding divides a collection's data into chunks and distributes those chunks across multiple shards.

The implementation was carried out locally using MongoDB 8.0.34 to simulate a distributed database environment.



**2. Cluster Architecture**

The sharded cluster consists of:

* Shard 1: trustsend25RS - a three-node replica set running on ports 27018, 27019 and 27020.
* Shard 2: trustsend25Shard2 - a three-node replica set running on ports 27021, 27022 and 27023.
* Config Server Replica Set: trustsend25ConfigRS - three nodes running on ports 27024, 27025 and 27026.
* Mongos Router: Running on port 27027 and directing client requests to the appropriate shard.



**3. Sharding Implementation**

The database used was "trustsend25\_distributed" with the "deliveries" collection.

The "delivery\_id" field was selected as the shard key because it uniquely identifies each delivery record and provides a suitable basis for distributing delivery documents.

The collection was enabled for sharding using:



sh.enableSharding("trustsend25\_distributed")

db.getSiblingDB("trustsend25\_distributed").deliveries.createIndex({ delivery\_id: 1 })

sh.shardCollection(

&#x20; "trustsend25\_distributed.deliveries",

&#x20; { delivery\_id: 1 }

)



A chunk boundary was created at delivery ID 5011, and a chunk was migrated to the second shard.



**4. Sharding Results**

After inserting and transferring the test delivery records into the correctly named database, the collection contained 21 documents.

MongoDB's getShardDistribution() command returned the following results:



|**Shard**|**Documents**|**Distribution**|
|-|-|-|
|trustsend25RS|10|47.61%|
|trustsend25Shard2|11|52.38%|
|**Total**|21|100%|



The collection had two chunks, with one chunk assigned to each shard. This confirms that the delivery records were distributed across both shards.

