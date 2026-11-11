sh.enableSharding("trustsend25_distributed");

db.getSiblingDB("trustsend25_distributed")
  .deliveries.createIndex({ delivery_id: 1 });

sh.shardCollection(
  "trustsend25_distributed.deliveries",
  { delivery_id: 1 }
);

sh.splitAt(
  "trustsend25_distributed.deliveries",
  { delivery_id: 5011 }
);

sh.moveChunk(
  "trustsend25_distributed.deliveries",
  { delivery_id: 5015 },
  "trustsend25Shard2"
);