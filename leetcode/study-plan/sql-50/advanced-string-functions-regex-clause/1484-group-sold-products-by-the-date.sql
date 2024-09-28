-- PostgreSQL

-- problem: 1484. Group Sold Products By The Date

-- Runtime 321 ms Beats 79.97%
-- Memory 0.00 MB Beats 100.00%

SELECT
    sell_date,
    COUNT(DISTINCT product) as num_sold,
    array_to_string(array_agg(DISTINCT product ORDER BY product), ',') as products
FROM
    Activities
GROUP BY
    1
ORDER BY
    1;
