-- Runtime 241 ms Beats 67.52%
-- Memory 0.00 MB Beats 100.00%

-- problem: 1211. Queries Quality and Percentage

SELECT
    DISTINCT query_name,
    (ROUND(SUM(rating::numeric / position) / COUNT(query_name), 2)) as quality,
    (ROUND(SUM(
        CASE WHEN rating < 3 THEN 1::numeric ELSE 0::numeric END) / COUNT(rating) * 100,
    2)) as poor_query_percentage
FROM
    Queries
WHERE
    query_name IS NOT NULL
GROUP BY
    query_name;
