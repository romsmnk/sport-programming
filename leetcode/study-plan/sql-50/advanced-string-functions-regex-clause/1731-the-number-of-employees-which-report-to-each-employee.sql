-- PostgreSQL

-- Problem: 1731. The Number of Employees Which Report to Each Employee

-- Runtime 308 ms Beats 98.00%
-- Memory 0.00 MB Beats 100.00%

SELECT m.employee_id,
    m.name,
    COUNT(e.employee_id) as reports_count,
    ROUND(AVG(e.age)) as average_age
FROM
    Employees e
JOIN
    Employees m
ON  m.employee_id = e.reports_to
GROUP BY
    1, 2
ORDER BY
    1;