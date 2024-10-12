-- PostgreSQL

-- Problem: 1907. Count Salary Categories

-- Runtime 3995 ms Beats 52.57%
-- Memory 0.00 MB Beats 100.00%

SELECT
    'Low Salary' as category,
    COUNT(account_id) as accounts_count
FROM
    Accounts
WHERE
    income < 20000
UNION
SELECT
    'Average Salary' as category,
    COUNT(account_id) as accounts_count
FROM
    Accounts
WHERE
    income >= 20000 AND income <= 50000
UNION
SELECT 'High Salary' as category, COUNT(account_id) as accounts_count
FROM Accounts WHERE income > 50000;
