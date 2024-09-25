-- PostgreSQL

-- problem: 619. Biggest Single Number

-- Runtime 182 ms Beats 95.77%
-- Memory 0.00 MB Beats 100.00%

SELECT
    MAX(num) as num
FROM (
    SELECT
        num
    FROM
        MyNumbers
    GROUP BY
        num
    HAVING
        COUNT(num) = 1
    );
