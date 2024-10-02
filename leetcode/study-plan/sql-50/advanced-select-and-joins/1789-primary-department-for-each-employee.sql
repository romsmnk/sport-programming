-- PostgreSQL

-- problem: 1789. Primary Department for Each Employee

-- Runtime 231 ms Beats 80.53%
-- Memory 0.00 MB Beats 100.00%

SELECT
    employee_id,
    department_id
FROM
    Employee
WHERE primary_flag = 'Y' OR employee_id IN (SELECT employee_id FROM Employee GROUP BY 1 HAVING COUNT(employee_id) = 1);
