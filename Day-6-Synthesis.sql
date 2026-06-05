-- CONCEPT: Synthesis (WHERE + GROUP BY + HAVING + ORDER BY)
-- DATE: 2026-06-05
-- CHALLENGE: Filtered Billboard data for years > 2010, counted songs, and kept only years with > 80 songs.

SELECT year, 
       COUNT(*) AS song_count
FROM tutorial.billboard_top_100_year_end
WHERE year > 2010
GROUP BY 1
HAVING COUNT(*) > 80
ORDER BY 1 ASC;

-- NOTE: 
-- 1. GROUP BY requires specific columns, not SELECT *.
-- 2. ORDER BY 'year' (with quotes) fails because it is a string; use the column name.
