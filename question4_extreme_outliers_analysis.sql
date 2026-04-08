/* Do they receive small amounts and send out large ones? */

SELECT a.account_id,
ROUND(AVG(r.tx_amount),2) AS avg_incoming,
ROUND(AVG(s.tx_amount),2) AS avg_outgoing
FROM accounts a 
JOIN transactions r
ON a.account_id =r.receiver_account_id
JOIN transactions s
ON a.account_id = s.sender_account_id
GROUP BY a.account_id
HAVING avg_outgoing > avg_incoming * 100
