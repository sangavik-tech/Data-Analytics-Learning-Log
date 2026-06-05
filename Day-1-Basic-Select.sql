-- CONCEPT: SELECT Statement
-- DATE: 2026-06-05
-- CHALLENGE: Learned how to pull specific columns from the 'Customers' table.
-- NOTE: I realized that without 'LIMIT', the database shows everything, which could be slow in real life.

SELECT CustomerName, City
FROM Customers
LIMIT 5;
