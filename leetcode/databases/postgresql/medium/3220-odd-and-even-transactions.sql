-- PostgreSQL
-- Problem: 3220. Odd and Even Transactions

-- Runtime 184 ms Beats 77.78%
-- Memory 0.00 MB Beats 100.00%

SELECT
    transaction_date,
    (
        COALESCE(
            (
                SELECT SUM(amount) 
                FROM transactions t1
                WHERE t2.transaction_date = t1.transaction_date
                AND amount % 2 != 0
            ), 0
        )
    ) AS odd_sum,
    COALESCE(
        (
            SELECT SUM(amount) 
            FROM transactions t1
            WHERE t2.transaction_date = t1.transaction_date
            AND amount % 2 = 0
        ), 0
    ) AS even_sum
FROM
    transactions t2
GROUP BY transaction_date
ORDER BY transaction_date ASC;