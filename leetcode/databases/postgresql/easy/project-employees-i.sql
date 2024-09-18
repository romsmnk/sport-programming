-- Runtime 461 ms Beats 81.70%
-- Memory 0.00 MB Beats 100.00%

-- problem: 1075. Project Employees I

SELECT      project_id,
            ROUND(AVG(experience_years), 2) AS average_years
FROM        Project p
JOIN        Employee e
ON          p.employee_id = e.employee_id
GROUP BY    project_id;

