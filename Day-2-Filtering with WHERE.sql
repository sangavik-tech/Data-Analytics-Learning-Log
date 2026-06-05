SQL
-- CONCEPT: Filtering (WHERE) and Sorting (ORDER BY)
-- DATE: 2026-06-05
-- CHALLENGE: Used WHERE to filter for specific artists and ORDER BY to rank data.

-- Example: Finding Katy Perry's rankings in 2012
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year = 2012 AND "group" = 'Katy Perry'
ORDER BY year DESC;

-- NOTE: 
-- 1. Single quotes are required for text values (like 'Katy Perry').
-- 2. "group" is in double quotes because it is a reserved word in SQL.
-- 3. ORDER BY DESC makes the data easier to read by putting the top values first.
