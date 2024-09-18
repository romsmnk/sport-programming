-- Runtime 461 ms Beats 81.70%
-- Memory 0.00 MB Beats 100.00%

-- problem: 1075. Project Employees I

SELECT      project_id,
            ROUND(AVG(experience_years), 2) AS average_years
FROM        Project p
JOIN        Employee e
ON          p.employee_id = e.employee_id
GROUP BY    project_id;

-- Runtime 766 ms Beats 9.74%
-- Memory 0.00 MB Beats 100.00%

SELECT      project_id,
            ROUND(SUM(experience_years::numeric) / COUNT(p.employee_id)::numeric, 2)
AS          average_years
FROM        Project p
LEFT JOIN   Employee e
ON          p.employee_id = e.employee_id
GROUP BY    p.project_id
ORDER BY    p.project_id;
