/* Which accounts send the most money overall */ 

SELECT a.account_id, SUM (t.tx_amount) AS total_sent, COUNT(t.tx_id) AS transaction_count,
ROUND(AVG(t.tx_amount),2) AS avg_transaction_size
FROM transactions t
JOIN accounts a
ON t.sender_account_id = a.account_id
GROUP BY a.account_id
ORDER BY total_sent DESC;