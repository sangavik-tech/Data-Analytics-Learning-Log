-- CONCEPT: INNER JOIN
-- DATE: 2026-06-06
-- CHALLENGE: Joined 'accounts' and 'orders' tables. 
-- NOTE: I learned that schemas vary. I had to use 'amount_usd' instead of 'total_amt_usd'.

SELECT a.name AS account_name, 
       o.amount_usd
FROM tutorial.accounts a
JOIN tutorial.orders o
  ON a.id = o.account_id;

-- NOTE:
-- 1. INNER JOIN returns rows only when there is a match in BOTH tables.
-- 2. Aliases (a and o) make the code cleaner and prevent errors.
-- 3. 'ON' is where the "link" between the two tables is defined.
