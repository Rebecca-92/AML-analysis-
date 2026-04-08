/* Do they quickly send the money out? (Pass-through behavior)*/

SELECT a.account_id, SUM(r.tx_amount) AS total_received,
SUM (s.tx_amount) AS total_sent 
FROM accounts a
JOIN transactions r
ON a.account_id = r.receiver_account_id
JOIN transactions s
ON a.account_id = s.sender_account_id
GROUP BY a.account_id
HAVING total_sent > 0.8 * total_received
ORDER BY total_received DESC;