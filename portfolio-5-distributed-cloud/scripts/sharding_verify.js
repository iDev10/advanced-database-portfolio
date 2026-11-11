db.getSiblingDB("trustsend25_distributed")
  .deliveries.countDocuments();

db.getSiblingDB("trustsend25_distributed")
  .deliveries.getShardDistribution();

db.adminCommand({ listShards: 1 });

sh.status();