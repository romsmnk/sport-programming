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

-- Runtime 179 ms Beats 80.38%
-- Memory 0.00 MB Beats 100.00%

SELECT
    x,
    y,
    z,
    CASE
        WHEN x + y > z AND x + z > y AND y + z > x THEN 'Yes'
        ELSE 'No'
    END AS triangle
FROM Triangle;

SELECT
    t.x, t.y, t.z,
CASE WHEN
    (t.x + t.y > t.z)
AND (t.x + t.z > t.y)
AND (t.y + t.z > t.x)
THEN 'Yes' ELSE 'No' END AS triangle
FROM
    Triangle t;
