Advanced Database Systems Practical Portfolio – TrustSend25

Name: AYANTUNDE BODE
Student ID: 301894692
Matric Number: 2025/C/MIT/1787
Course: MIT8103- Advanced Database Management Systems
Organisation: TrustSend25


Project Overview
This project applied advanced database concepts to TrustSend25, a simulated logistics delivery company connecting customers, delivery hubs and dispatch riders (sweepers). The project explored relational database design, query optimisation, transaction management, NoSQL data modelling, and distributed database architecture.

1. Project Implementation and Outcomes
The project was completed across five practical portfolios:

Portfolio 1 - Database Design and Modelling
A relational database was designed and implemented using MySQL 8.4. The "trustsend25_db" database contains customers, hubs, sweepers and deliveries tables. An Entity Relationship Diagram, relational structures, primary and foreign keys, constraints, sample records, normalisation explanations and SQL queries were developed and tested.

Portfolio 2 - Query Processing and Optimisation
SQL queries were executed and analysed using execution plans. A benchmark table containing 10,000 generated delivery records was used to compare query performance before and after indexing. The indexed query recorded approximately 0.626 ms compared with 3.09 ms without the index in the observed test, representing an approximately 79.7% reduction in execution time. These results are specific to the test environment.

Portfolio 3 - Transactions and Concurrency
Transaction management was demonstrated through COMMIT and ROLLBACK operations. REPEATABLE READ and READ COMMITTED isolation levels were tested using multiple database sessions. Row-level locking with SELECT ... FOR UPDATE was also implemented to demonstrate concurrency control and prevent conflicting updates.

Portfolio 4 -NoSQL and Advanced Data Models
MongoDB was used to implement a document-oriented model for TrustSend25 delivery records. Documents included embedded customer, hub and sweeper information. CRUD operations, filtering and aggregation were performed to demonstrate how a flexible document model can support logistics data and delivery tracking.

Portfolio 5 - Distributed and Cloud Databases
A local MongoDB distributed cluster was configured using two three-node shard replica sets, a three-node config server replica set and a mongos router. Replication was tested, and the `deliveries` collection was sharded using delivery_id. A total of 21 documents was verified across the two shards, with 10 documents on the first shard and 11 on the second. This was a local simulation of distributed database architecture, not a deployment to a commercial cloud platform.

2. Tools and Technologies
The following tools were used:
- MySQL 8.4 and MySQL Workbench: Relational database creation, SQL queries, transactions and performance analysis.
- MongoDB 8.0.34, MongoDB Compass and MongoDB Shell: Document modelling, aggregation, replication and sharding.
- Python 3.14.10: Generation of benchmark records for query optimisation.
- Draw.io: ER diagram creation.
- Git and GitHub: Version control, project organisation and submission of project files, scripts, documentation and screenshots.
- Windows PowerShell: Database server configuration and cluster management.

3. Datasets
The primary project source was the TrustSend25 case study, which provided the simulated business context and operational requirements.
Datasets consisted of synthetic customer, hub, sweeper and delivery records created for database implementation and testing. A separate 10,000-record benchmark dataset was generated using Python for the query optimisation experiment. No real customer or commercially confidential delivery data was used.

4. AI Assistance Declaration
AI tool used: ChatGPT by OpenAI.
Purpose of AI assistance: ChatGPT was used as a learning and development assistant to explain database concepts, provide step-by-step implementation guidance, suggest SQL and MongoDB commands, assist with troubleshooting, interpret technical outputs, and help structure project documentation and reports.

Review, correction and verification: AI-generated suggestions were not accepted without practical review. I executed the commands and scripts in the local database environments, inspected query results and execution plans, checked transaction behaviour, verified replica-set membership and data replication, and confirmed shard distribution through MongoDB commands. Errors encountered during implementation, including a database naming typo, were identified and corrected. Screenshots and saved outputs were retained as evidence of practical implementation. Performance results were based on observed executions rather than assumed AI-generated values.
I remain responsible for configuring the environments, executing and testing the implementations, reviewing outputs, correcting errors and organising the final deliverables.

6. ConclusioN
The project provided practical experience in relational and NoSQL database technologies, query performance optimisation, transaction management, concurrency control, replication and sharding. It demonstrated how different database approaches can support the operational and scalability requirements of a logistics platform. The work also strengthened practical skills in database administration, troubleshooting, technical documentation and version control.

References
Official MySQL 8.4 Reference Manual (https://dev.mysql.com/doc/refman/8.4/en/)
MongoDB 8.0 Manual (https://www.mongodb.com/docs/v8.0/)
