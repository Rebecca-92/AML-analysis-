/*Accounts with extreme total sent*/

SELECT sender_account_id,
COUNT (*) AS tx_count,
ROUND (AVG (tx_amount),2) AS avg_tx_amount,
SUM (tx_amount) AS total_sent
FROM transactions
GROUP BY sender_account_id
HAVING avg_tx_amount > 1000000
OR total_sent > 5000000
ORDER BY total_sent DESC;