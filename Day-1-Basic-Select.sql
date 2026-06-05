SQL
-- CONCEPT: Basic SELECT Statement
-- DATE: 2026-06-05
-- CHALLENGE: Ran my first query on the Customers and Products tables.

SELECT * FROM Customers;

-- NOTE: The '*' means "select all columns". 
-- Next time I want to learn how to pick only specific columns.

SQL
-- CONCEPT: SELECT Statement
-- DATE: 2026-06-05
-- CHALLENGE: Learned how to pull specific columns from the 'Customers' table.
-- NOTE: I realized that without 'LIMIT', the database shows everything, which could be slow in real life.

SELECT CustomerName, City
FROM Customers
LIMIT 5;
