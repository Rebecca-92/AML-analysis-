/* Which accounts receive money from the highest number of unique senders? (possible mule accounts)*/

SELECT a.account_id, COUNT(DISTINCT t.sender_account_id) AS unique_senders,
COUNT (t.tx_id) AS total_transactions, ROUND(AVG(t.tx_amount),2) AS avg_transaction_size, 
SUM(t.tx_amount) AS total_received
FROM accounts a
JOIN transactions t
ON a.account_id = t.receiver_account_id
GROUP BY a.account_id
ORDER BY unique_senders DESC
LIMIT 10;