USE trustsend25_db;
START TRANSACTION; -- SESSION A: Acquire an exclusive row lock

SELECT *
FROM demo_transaction
WHERE account_id = 1
FOR UPDATE;

COMMIT;

START TRANSACTION; -- SESSION B: Concurrent update

UPDATE demo_transaction
SET balance = balance - 500
WHERE account_id = 1;

COMMIT;

-- Verify the final balance
SELECT *
FROM demo_transaction
WHERE account_id = 1;
