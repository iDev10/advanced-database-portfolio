**TrustSend25 Database Testing and Integrity Verification**

Practical tests were conducted on the TrustSend25 MySQL database to verify table relationships, referential integrity, and database constraints. The tests were performed using MySQL Workbench against the "trustsend25_db" database.

**Relationship Verification**
An SQL JOIN query was executed to retrieve delivery records alongside their associated customer, hub, and sweeper information.
The query used:
- INNER JOIN to retrieve the associated customer.
- LEFT JOIN to retrieve hub information.
- LEFT JOIN to retrieve sweeper information.
The query executed successfully and returned the expected relational data.

**Integrity Testing**
Three tests were conducted to identify orphaned references:

| Test | Expected result | Actual result |

|---|---|---|

| Delivery-to-customer references | 0 orphaned records | 0 rows |

| Delivery-to-hub references | 0 orphaned assigned records | 0 rows |

| Delivery-to-sweeper references | 0 orphaned assigned records | 0 rows |

The tests confirmed that all non-null foreign-key references corresponded to existing records in their respective tables.
NULL hub and sweeper assignments were permitted, as defined by the database schema.

**Constraint Verification**
The database constraints were inspected using the MySQL "information_schema.TABLE_CONSTRAINTS" view.
The inspection covered:
- Primary key constraints.
- Foreign key constraints.
- Unique constraints.
- Check constraints.
The database includes additional checks to prevent negative delivery fees and restrict delivery statuses to approved values.
The constraint inspection query executed successfully.
