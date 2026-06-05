-- CONCEPT: Filtering Groups (HAVING)
-- DATE: 2026-06-05
-- CHALLENGE: Filtered artists to show only those with more than 5 songs in the list.

SELECT "group", 
       COUNT(*) AS song_count
FROM tutorial.billboard_top_100_year_end
GROUP BY 1
HAVING COUNT(*) > 5
ORDER BY song_count DESC;

-- NOTE:
-- 1. WHERE filters individual rows (e.g., year = 2012).
-- 2. HAVING filters aggregated results (e.g., song_count > 5).
-- 3. The order matters: SELECT -> FROM -> GROUP BY -> HAVING -> ORDER BY.
