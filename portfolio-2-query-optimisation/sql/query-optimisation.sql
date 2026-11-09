USE trustsend25_db;

SELECT COUNT(*) AS total_records
FROM deliveries_benchmark;

EXPLAIN
SELECT
    delivery_id,
    customer_id,
    hubs_id,
    sweeper_id,
    delivery_fee
FROM deliveries_benchmark
WHERE delivery_status = 'Delivered';

EXPLAIN ANALYZE
SELECT
    delivery_id,
    customer_id,
    hubs_id,
    sweeper_id,
    delivery_fee
FROM deliveries_benchmark
WHERE delivery_status = 'Delivered';

CREATE INDEX idx_benchmark_delivery_status
ON deliveries_benchmark(delivery_status);

EXPLAIN
SELECT
    delivery_id,
    customer_id,
    hubs_id,
    sweeper_id,
    delivery_fee
FROM deliveries_benchmark
WHERE delivery_status = 'Delivered';

EXPLAIN ANALYZE
SELECT
    delivery_id,
    customer_id,
    hubs_id,
    sweeper_id,
    delivery_fee
FROM deliveries_benchmark
WHERE delivery_status = 'Delivered';

DROP INDEX idx_benchmark_delivery_status
ON deliveries_benchmark;

EXPLAIN ANALYZE
SELECT
    delivery_id,
    customer_id,
    hubs_id,
    sweeper_id,
    delivery_fee
FROM deliveries_benchmark
WHERE delivery_status = 'Delivered';

CREATE INDEX idx_benchmark_delivery_status
ON deliveries_benchmark(delivery_status);

SHOW INDEX FROM deliveries_benchmark;