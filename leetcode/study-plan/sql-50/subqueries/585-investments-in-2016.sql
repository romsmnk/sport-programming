-- PostgreSQL

-- Problem: 585. Investments in 2016

-- Runtime 299 ms Beats 47.32%
-- Memory 0.00 MB Beats 100.00%

WITH unique_tiv2016 AS (
    SELECT MIN(pid) AS pid,
            MIN(tiv_2016) AS tiv_2016,
            MIN(tiv_2015) AS tiv_2015
    FROM Insurance
    GROUP BY lat, lon
    HAVING COUNT(pid) = 1
)

SELECT ROUND(SUM(t1.tiv_2016)::decimal, 2) AS tiv_2016
FROM unique_tiv2016 AS t1
WHERE EXISTS (
            SELECT 1
            FROM Insurance AS i
            WHERE i.pid != t1.pid
                AND i.tiv_2015 = t1.tiv_2015);
