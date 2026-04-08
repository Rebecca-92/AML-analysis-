/* Are high-value or above-average senders also generating alerts?*/

SELECT t.sender_account_id, 
SUM(t.tx_amount) AS total_sent, COUNT(DISTINCT a.alert_id) AS alerts_count
FROM transactions t
LEFT JOIN alerts a 
ON t.sender_account_id = a.sender_account_id
GROUP BY t.sender_account_id
HAVING total_sent >
(SELECT AVG(total_per_account)
FROM(SELECT SUM(tx_amount) AS total_per_account
FROM transactions 
GROUP BY sender_account_id)) 
ORDER BY alerts_count DESC
LIMIT 20;