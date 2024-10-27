-- PostgreSQL
-- Problem: 1587. Bank Account Summary II

-- Runtime 224 ms Beats 89.58%
-- Memory 0.00 MB Beats 100.00%

SELECT name, SUM(amount) as balance FROM Users LEFT JOIN Transactions ON Transactions.account = Users.account GROUP BY 1 HAVING SUM(amount) > 10000;