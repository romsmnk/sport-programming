-- PostgreSQL

-- problem: 1164. Product Price at a Given Date

-- Runtime 383 ms Beats 69.74%
-- Memory 0.00 MB Beats 100.00%

SELECT
    product_id, 10 as price
FROM
    Products
GROUP BY
    1
HAVING
    min(change_date) > '2019-08-16'
UNION
SELECT
    product_id,
    new_price as price
FROM
    Products
WHERE (product_id, change_date) IN (
        SELECT product_id, MAX(change_date) FROM Products
        WHERE change_date <= '2019-08-16'
        GROUP BY 1
);
