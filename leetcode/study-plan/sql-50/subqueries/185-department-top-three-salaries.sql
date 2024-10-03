-- PostgreSQL

-- problem: 185. Department Top Three Salaries

-- Runtime 287 ms Beats 56.91%
-- Memory 0.00 MB Beats 100.00%

SELECT
    d.name   as "Department",
    e.name   as "Employee",
    salary as "Salary"
FROM
    Employee e
JOIN
    Department d
ON
    departmentId = d.id
WHERE
    salary IN (
        SELECT DISTINCT(salary)
        FROM Employee
        WHERE Employee.departmentId = d.id
        ORDER BY salary DESC
        LIMIT 3
    );
