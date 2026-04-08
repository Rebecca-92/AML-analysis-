/* Identify chains of transactions (money trail across 2-3 hops) */

SELECT 
t1.sender_account_id AS account_a, 
t1.receiver_account_id AS account_b,
t2.receiver_account_id AS account_c,
t1.tx_amount AS amount_a_to_b,
t2.tx_amount AS amount_b_to_c
FROM transactions t1
JOIN transactions t2
ON t1.receiver_account_id = t2.sender_account_id
WHERE t1.tx_amount > 0 AND t2.tx_amount > 0 
ORDER BY t1.tx_amount DESC;