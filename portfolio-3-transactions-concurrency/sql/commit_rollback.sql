
USE trustsend25_db;
START TRANSACTION;

UPDATE demo_transaction
SET balance = balance - 1000
WHERE account_id = 1;

UPDATE demo_transaction
SET balance = balance + 1000
WHERE account_id = 2;

SELECT * FROM demo_transaction;

COMMIT;

SELECT * FROM demo_transaction;

START TRANSACTION;

UPDATE demo_transaction
SET balance = balance - 500
WHERE account_id = 1;

UPDATE demo_transaction
SET balance = balance + 500
WHERE account_id = 2;

SELECT * FROM demo_transaction;

ROLLBACK;

SELECT * FROM demo_transaction;
