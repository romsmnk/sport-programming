-- PostgreSQL
-- Problem: 586. Customer Placing the Largest Number of Orders

-- Runtime 255ms Beats 81.21%
-- Memory 0.00 MB Beats 100.00%

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(customer_number) DESC
LIMIT 1;
