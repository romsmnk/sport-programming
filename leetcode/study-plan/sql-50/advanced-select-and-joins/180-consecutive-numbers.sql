-- PostgreSQL

-- Problem: 180. Consecutive Numbers

-- Runtime 287 ms Beats 60.58%
-- Memory 0.00 MB Beats 100.00%

SELECT
    DISTINCT l1.num as "ConsecutiveNums"
FROM
    Logs l1,
    Logs l2,
    Logs l3
WHERE
    l1.Id = l2.Id - 1
    AND l2.Id = l3.Id - 1
    AND l1.Num = l2.Num
    AND l2.Num = l3.Num;
