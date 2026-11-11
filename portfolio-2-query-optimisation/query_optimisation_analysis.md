** Query Optimisation and Delivery Status Indexing **

Test Environment
- DBMS: MySQL 8.4 LTS
- Storage engine: InnoDB
- Benchmark table: "deliveries_benchmark"
- Dataset: 10,000 records
- Filter condition: delivery_status = 'Delivered'

Baseline: Without an Index
The initial EXPLAIN plan showed a full table scan (type=ALL). No applicable index was available, and MySQL estimated approximately 10,087 rows for examination.

Optimised Query: With an Index
An index named "idx_benchmark_delivery_status" was created on the "delivery_status" column.

The subsequent EXPLAIN plan showed:
- Access type: ref
- Index used: idx_benchmark_delivery_status
- Estimated matching rows: 102
EXPLAIN ANALYZE reported 102 actual matching rows and an execution completion time of approximately 0.626 ms.

Execution Comparison

|Measurement|With Index|Without Index|
|-|-|-|
|Access method|Index lookup|Table scan|
|Actual matching rows|102|102|
|Actual completion time|0.626 ms|3.09 ms|

The indexed execution completed approximately 4.9 times faster in this test run, representing an observed reduction of approximately 79.7% in completion time.

Analysis
The index allowed MySQL to locate matching delivery records without scanning the entire table. Without the index, MySQL scanned all 10,000 records and applied a filter to identify the 102 matching records.
Both approaches returned the same number of records, demonstrating that indexing improved the observed query execution performance without changing the query's result.
Execution times may vary due to caching, hardware activity and other system conditions. Therefore, these measurements represent observations from this particular test environment rather than guaranteed performance improvements.
