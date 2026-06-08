sql
-- PROJECT: Customer Value Segmentation
-- DATE: 2026-06-08
-- OBJECTIVE: Segment accounts into 'High', 'Medium', and 'Low' value based on total spend.

SELECT a.name AS account_name,
       SUM(b.amount_usd) AS total_spend,
       CASE
           WHEN SUM(b.amount_usd) > 50000 THEN 'High Value'
           WHEN SUM(b.amount_usd) > 10000 THEN 'Medium Value'
           ELSE 'Low Value'
       END as customer_value
FROM tutorial.accounts a
JOIN tutorial.orders b ON a.id = b.account_id
GROUP BY 1
ORDER BY 2 DESC;
