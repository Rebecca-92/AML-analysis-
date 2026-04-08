/* Which accounts send more than the average account? */

SELECT sender_account_id, SUM(tx_amount) AS total_sent
FROM transactions 
GROUP BY sender_account_id
HAVING total_sent > 
(SELECT AVG(total_per_account)
FROM(SELECT SUM(tx_amount) AS total_per_account
FROM transactions 
GROUP BY sender_account_id)) 
ORDER BY total_sent DESC;