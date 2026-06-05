-- CONCEPT: GROUP BY
-- DATE: 2026-06-05
-- CHALLENGE: Counted the number of songs per artist using GROUP BY.

SELECT "song_name",
       COUNT(*) AS song_count
FROM tutorial.billboard_top_100_year_end
GROUP BY 1
ORDER BY song_count DESC;

-- NOTE: 
-- 1. 'GROUP BY 1' is a shortcut. It means "Group by the first column in my SELECT statement".
-- 2. This allows us to see performance/metrics per category (e.g., songs per artist).
