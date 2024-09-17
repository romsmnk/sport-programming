-- Runtime 230 ms Beats 49.80%
-- Memory 0.00 MB Beats 100.00%

-- problem: 1978. Employees Whose Manager Left the Company

SELECT      employee_id FROM Employees
WHERE       salary < 30000
            AND manager_id IS NOT NULL
            AND manager_id NOT IN (SELECT employee_id FROM Employees)
ORDER BY    employee_id;
