TRUSTSEND25 DATABASE MANAGEMENT PORTFOLIO

Name: AYANTUNDE BODE
Student ID: 301894692
Course: MIT8103- Advanced Database Management Systems


1. PROJECT OVERVIEW
This project presents the design, implementation and practical application of database management concepts using TrustSend25, a simulated logistics delivery company. 
TrustSend25 connects customers, delivery hubs and dispatch sweepers to facilitate delivery operations. The database system was developed to support customer registration, delivery requests, hub and sweeper assignments, delivery tracking and management of delivery records.
The project explores relational database design, query optimisation, transaction management, NoSQL data modelling and distributed database architecture.


2. PORTFOLIO CONTENTS

PORTFOLIO 1: DATABASE DESIGN AND MODELLING

This portfolio covers the design and implementation of the TrustSend25 relational database using MySQL. It includes the Entity Relationship Diagram, relational tables, primary and foreign keys, constraints, sample records and normalisation analysis.

PORTFOLIO 2: QUERY PROCESSING AND OPTIMISATION

This portfolio examines SQL query performance using execution plans and indexing techniques. A synthetic dataset containing 10,000 delivery records was used to compare query performance before and after indexing.

PORTFOLIO 3: TRANSACTIONS AND CONCURRENCY

This portfolio demonstrates transaction management using COMMIT and ROLLBACK, transaction isolation levels and concurrency control through row-level locking.

PORTFOLIO 4: NoSQL AND ADVANCED DATA MODELS

This portfolio implements a document-based NoSQL model using MongoDB. It includes delivery documents, embedded data structures, filtering operations and aggregation queries.

PORTFOLIO 5: DISTRIBUTED AND CLOUD DATABASES

This portfolio demonstrates MongoDB replication and sharding using a locally configured distributed cluster. It includes replica sets, config servers, a mongos router, shard distribution and supporting implementation evidence.
Note: The distributed database implementation was simulated locally and was not deployed to a commercial cloud platform.


3. TOOLS AND TECHNOLOGIES

The following tools were used:
- MySQL 8.4 and MySQL Workbench: Relational database creation, SQL queries, transactions and performance analysis.
- MongoDB 8.0.34, MongoDB Compass and MongoDB Shell: Document modelling, aggregation, replication and sharding.
- Python 3.14.10: Generation of benchmark records for query optimisation.
- Draw.io: ER diagram creation.
- Git and GitHub: Version control, project organisation and submission of project files, scripts, documentation and screenshots.
- Windows PowerShell: Database server configuration and cluster management.


4. DATASETS

The primary project source was the TrustSend25 case study, which provided the simulated business context and operational requirements.
Datasets consisted of synthetic customer, hub, sweeper and delivery records created for database implementation and testing. A separate 10,000-record benchmark dataset was generated using Python for the query optimisation experiment. No real customer or commercially confidential delivery data was used.

5. AI ASSISTANCE
AI tool used: ChatGPT by OpenAI.
Purpose of AI assistance: ChatGPT was used as a learning and development assistant to explain database concepts, provide step-by-step implementation guidance, suggest SQL and MongoDB commands, assist with troubleshooting, interpret technical outputs, and help structure project documentation and reports. AI-generated suggestions were not accepted without practical review. I executed the commands and scripts in the local database environments, inspected query results and execution plans, checked transaction behaviour, verified replica-set membership and data replication, and confirmed shard distribution through MongoDB commands. Errors encountered during implementation, including a database naming typo, were identified and corrected. Screenshots and saved outputs were retained as evidence of practical implementation. Performance results were based on observed executions rather than assumed AI-generated values.
I remain responsible for configuring the environments, executing and testing the implementations, reviewing outputs, correcting errors and organising the final deliverables.


6. PROJECT ORGANISATION
The submission is organised into five portfolio folders. Each folder contains relevant implementation files, scripts, documentation and screenshots serving as evidence of the work completed.
Kindly refer to the individual portfolio folders for detailed implementation procedures and results.


7. VERSION CONTROL
The project was managed using Git and hosted in a public GitHub repository.

GitHub Repository:
https://github.com/iDev10/advanced-database-portfolio



Technical references include:

MySQL Reference Manual:
https://dev.mysql.com/doc/refman/8.4/en/

MongoDB Manual:
https://www.mongodb.com/docs/manual/

MongoDB Replication:
https://www.mongodb.com/docs/manual/replication/

MongoDB Sharding:
https://www.mongodb.com/docs/manual/sharding/