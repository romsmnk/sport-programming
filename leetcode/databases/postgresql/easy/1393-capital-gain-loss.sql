-- PostgreSQL
-- Problem: 1393. Capital Gain/Loss

-- Runtime 364 ms Beats 62.32%
-- Memory 0.00 MB Beats 100.00%

SELECT
    stock_name,
    (
        (SELECT SUM(price) FROM Stocks s2 WHERE s2.stock_name = s1.stock_name AND operation = 'Sell')
        -
        (SELECT SUM(price) FROM Stocks s2 WHERE s2.stock_name = s1.stock_name AND operation = 'Buy')
    ) as capital_gain_loss
FROM
    Stocks s1
GROUP BY
    1;
