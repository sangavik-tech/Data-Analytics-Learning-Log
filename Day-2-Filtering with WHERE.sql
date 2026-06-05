SQL
-- CONCEPT: Filtering (WHERE) and Sorting (ORDER BY)
-- DATE: 2026-06-05
-- CHALLENGE: Extracted data for Katy Perry from the Billboard table.
-- NOTE: Filtering is how we narrow down massive datasets to actionable insights.

SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year = 2012 AND "group" = 'Katy Perry'
ORDER BY year DESC;
