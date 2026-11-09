#### **Transactions and Concurrency Control**



\## 1. Introduction



This practical exercise demonstrates transaction management and concurrency

control in MySQL using the InnoDB storage engine.



The TrustSend25 database uses a demonstration table named

`demo\_transaction` to represent operational wallets for hub and sweeper

activities.



The experiments examined transaction commitment, rollback, isolation levels,

and row-level locking.



\## 2. COMMIT and ROLLBACK



A transaction was used to transfer ₦1,000 from the Hub Operations Wallet

to the Sweeper Operations Wallet.



The transaction was committed successfully using `COMMIT`.



The resulting balances were:



\- Hub Operations Wallet: ₦9,000

\- Sweeper Operations Wallet: ₦6,000



A second transaction was used to simulate another transfer. It was cancelled

using `ROLLBACK`, demonstrating that uncommitted changes can be reversed.



This confirms that transactions help preserve data consistency when

operations need to be completed together.



\## 3. Transaction Isolation Levels



Two MySQL transaction isolation levels were tested.



\### 3.1 REPEATABLE READ



Session A started a transaction and read the Hub Operations Wallet balance

as ₦9,000.



Session B updated the balance to ₦8,000 and committed the change.



When Session A repeated its original read within the same transaction,

it still returned ₦9,000.



This demonstrated REPEATABLE READ behaviour: consistent reads within the

transaction continued to see the same snapshot, despite another session

committing an update.



\### 3.2 READ COMMITTED



The experiment was repeated using READ COMMITTED.



Session A initially read a balance of ₦8,000.



Session B updated the balance to ₦7,500 and committed.



When Session A repeated the read, it returned ₦7,500.



This demonstrated that under READ COMMITTED, each consistent read can see

data committed before that read begins.



\## 4. Row-Level Locking



The row-level locking experiment used:



`SELECT ... FOR UPDATE`



Session A selected the Hub Operations Wallet record for update, acquiring

an exclusive lock on the selected row.



While Session A held the lock, Session B attempted to update the same row.

The update was blocked until Session A committed its transaction.



After Session A committed, Session B's update proceeded successfully.



The final Hub Operations Wallet balance was ₦6,500.



This demonstrated how row-level locking helps prevent conflicting

concurrent modifications to the same record.



\## 5. Findings



The experiments demonstrated the following:



1\. COMMIT permanently applies successful transaction changes.

2\. ROLLBACK reverses uncommitted changes.

3\. REPEATABLE READ maintains a consistent snapshot for repeated reads

&#x20;  within a transaction.

4\. READ COMMITTED allows subsequent reads to see newly committed changes.

5\. SELECT ... FOR UPDATE locks selected records against conflicting

&#x20;  updates until the transaction ends.



\## 6. Conclusion



Transaction management and concurrency control are important for systems

such as TrustSend25, where multiple users or operational processes may

access and modify records simultaneously.



The practical exercises showed how MySQL transactions, isolation levels,

and row-level locking help maintain data consistency and control concurrent

access.



\## 7. Evidence



Screenshots documenting the transaction, isolation-level, and row-locking

experiments are available in the Portfolio 3 `screenshot` directory.

