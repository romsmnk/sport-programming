-- PostgreSQL

-- problem: 596. Classes More Than 5 Students

-- Runtime 301 ms Beats 64.88%
-- Memory 0.00 MB Beats 100.00%

SELECT
    class
FROM
    Courses
GROUP BY
    1
HAVING
    COUNT(1) >= 5;
