-- PostgreSQL

-- problem: 610. Triangle Judgement

-- Runtime 189 ms Beats 68.08%
-- Memory 0.00 MB Beats 100.00%

SELECT
    x, y, z,
    (CASE WHEN (
        (ABS(x) + ABS(y)) > ABS(z)
        AND (ABS(y) + ABS(z)) > ABS(x)
        AND (ABS(x) + ABS(z)) > ABS(y)
        ) THEN 'Yes' ELSE 'No' END) as triangle
FROM Triangle;
