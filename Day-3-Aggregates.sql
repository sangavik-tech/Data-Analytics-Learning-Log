-- CONCEPT: Aggregate Functions (AVG, COUNT, SUM)
-- DATE: 2026-06-05
-- CHALLENGE: Used COUNT and AVG to summarize data from the billboard table.

SELECT AVG(year) AS average_year, 
       COUNT(*) AS total_rows
FROM tutorial.billboard_top_100_year_end;

-- NOTE: 
-- 1. Using 'AS' creates an alias, making the column names readable.
-- 2. Aggregates are essential for business intelligence—they turn raw data into KPIs (Key Performance Indicators).
