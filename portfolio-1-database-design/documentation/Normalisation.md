#### **# TrustSend25 Database Normalisation Analysis**



\## 1. Introduction



Database normalisation is the process of organising data into related tables to reduce redundancy, prevent data anomalies, and improve data integrity.



The TrustSend25 relational database was designed using MySQL 8.4 LTS and consists of four principal tables: `customers`, `hubs`, `sweepers`, and `deliveries`.



The database structure was evaluated against the first three normal forms (1NF, 2NF, and 3NF).



\## 2. First Normal Form (1NF)



A relation satisfies First Normal Form when all attributes contain atomic values, each record is uniquely identifiable, and repeating groups are eliminated.



The TrustSend25 database satisfies 1NF because:



\- Each table has a primary key.

\- Each column stores individual values rather than repeating groups.

\- Customer, hub, sweeper, and delivery information are organised into separate records.



For example, customer names are stored in `first\_name` and `last\_name`, while contact information is stored in separate `email` and `phone\_num` columns.



\*\*Conclusion:\*\* All four tables satisfy 1NF.



\## 3. Second Normal Form (2NF)



A relation satisfies Second Normal Form when it is already in 1NF and every non-key attribute is fully dependent on the entire candidate key.



The TrustSend25 tables use single-column primary keys:



\- `customers`: `customer\_id`

\- `hubs`: `hubs\_id`

\- `sweepers`: `sweeper\_id`

\- `deliveries`: `delivery\_id`



Since none of these primary keys is composite, partial dependency on part of a primary key cannot occur.



\*\*Conclusion:\*\* All four tables satisfy 2NF.



\## 4. Third Normal Form (3NF)



A relation satisfies Third Normal Form when it is already in 2NF and contains no transitive dependencies of non-key attributes on a candidate key.



The TrustSend25 database separates information according to its entities:



\- Customer details are maintained in the `customers` table.

\- Hub details are maintained in the `hubs` table.

\- Sweeper details are maintained in the `sweepers` table.

\- Delivery-specific information is maintained in the `deliveries` table.



The `deliveries` table references the other entities through foreign keys instead of duplicating their descriptive information.



\*\*Conclusion:\*\* Based on the intended functional dependencies and business rules, the four tables satisfy 3NF.



\## 5. Functional Dependencies



The principal functional dependencies are:



\- `customer\_id` determines all other customer attributes.

\- `hubs\_id` determines all other hub attributes.

\- `sweeper\_id` determines all other sweeper attributes.

\- `delivery\_id` determines all other delivery attributes.



These dependencies support the separation of entities and help minimise unnecessary data duplication.



\## 6. Additional Integrity Constraints



The database incorporates additional integrity controls:



\- UNIQUE constraints on selected email and phone number fields.

\- FOREIGN KEY constraints connecting deliveries to customers, hubs, and sweepers.

\- CHECK constraints ensuring delivery fees are non-negative.

\- CHECK constraints restricting delivery statuses to approved values.

\- DEFAULT values for delivery status, timestamps, and sweeper availability.



The `hubs\_id` and `sweeper\_id` fields in the deliveries table allow NULL values to accommodate unassigned deliveries.



\## 7. Conclusion



The TrustSend25 relational database demonstrates the application of 1NF, 2NF, and 3NF principles through atomic attributes, appropriate primary keys, and separation of related entities.



The resulting structure reduces unnecessary duplication, supports referential integrity, and provides a foundation for subsequent query optimisation and transaction processing exercises.

