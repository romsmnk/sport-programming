-- PostgreSQL

-- Problem: 1045. Customers Who Bought All Products

-- Runtime 486 ms Beats 95.71%
-- Memory 0.00 MB Beats 100.00%

SELECT customer_id FROM Customer GROUP BY customer_id HAVING COUNT(DISTINCT product_key) = (SELECT COUNT(product_key) FROM Product);