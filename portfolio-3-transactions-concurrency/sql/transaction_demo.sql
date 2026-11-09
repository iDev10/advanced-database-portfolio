
USE trustsend25_db;

CREATE TABLE demo_transaction (
    account_id INT PRIMARY KEY,
    account_name VARCHAR(50) NOT NULL,
    balance DECIMAL(10,2) NOT NULL,
    CONSTRAINT chk_balance CHECK (balance >= 0)
) ENGINE=InnoDB;

INSERT INTO demo_transaction
    (account_id, account_name, balance)
VALUES
    (1, 'Hub Operations Wallet', 10000.00),
    (2, 'Sweeper Operations Wallet', 5000.00);

SELECT * FROM demo_transaction;
