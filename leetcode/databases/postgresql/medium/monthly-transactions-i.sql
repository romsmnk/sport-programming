-- problem: 1193. Monthly Transactions I

-- Runtime 426 ms Beats 85.51%
-- Memory 0.00 MB Beats 100.00%

SELECT
    TO_CHAR(trans_date, 'YYYY-MM') as month,
    country,
    COUNT(1) as trans_count,
    SUM(CASE WHEN state = 'approved' THEN 1::NUMERIC ELSE 0::NUMERIC END) as approved_count,
    SUM(amount) as trans_total_amount,
    SUM(CASE WHEN state = 'approved' THEN amount::numeric ELSE 0::numeric END) as approved_total_amount
FROM
    Transactions
GROUP BY
    1, 2;
