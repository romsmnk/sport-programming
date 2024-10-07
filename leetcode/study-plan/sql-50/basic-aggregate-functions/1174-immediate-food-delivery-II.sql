-- PostgreSQL

-- Problem: 1174. Immediate Food Delivery II

-- Runtime 445 ms Beats 53.28%
-- Memory 0.00 MB Beats 100.00%

SELECT
    ROUND(count(DISTINCT customer_id) * 100 / (
        SELECT COUNT(DISTINCT customer_id) FROM Delivery
    )::NUMERIC, 2) AS immediate_percentage
FROM
    Delivery
WHERE customer_id IN (
        SELECT
        customer_id
        FROM
            Delivery
        GROUP BY
            1
        HAVING
            MIN(order_date) = MIN(customer_pref_delivery_date)
    );
