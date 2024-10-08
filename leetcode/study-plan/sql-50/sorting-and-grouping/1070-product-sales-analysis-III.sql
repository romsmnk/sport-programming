-- PostgreSQL

-- problem: 1070. Product Sales Analysis III

-- Runtime 1100 ms Beats 85.89%
-- Memory 0.00 MB Beats 100.00%

SELECT
    product_id,
    year as first_year,
    quantity,
    price
FROM
    Sales
WHERE
    (product_id, year)
IN  (
    SELECT
        product_id,
        MIN(year) as year
    FROM
        Sales
    GROUP BY 1
);
