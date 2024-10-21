-- PostgreSQL
-- Problem: 181. Employees Earning More Than Their Managers

-- Runtime 398 ms Beats 11.05%
-- Memory 0.00 MB Beats 100.00%

SELECT
    name as "Employee"
FROM
    Employee e1
WHERE salary > (SELECT salary FROM Employee e2 WHERE e2.id = e1.managerId)