-- PostgreSQL

-- problem: 1327. List the Products Ordered in a Period

-- Runtime 296 ms Beats 22.26%
-- Memory 0.00 MB Beats 100.00%

SELECT
    product_name,
    SUM(unit) as unit
FROM Products
LEFT JOIN
    Orders
USING(product_id)
WHERE
    order_date BETWEEN '2020-02-01'::date AND '2020-02-29'::date
GROUP BY
    product_name
HAVING SUM(unit) >= 100;
