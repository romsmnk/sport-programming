-- Runtime 479 ms Beats 7.15%
-- Memory 0.00 MB Beats 100.00%

-- Problem Name: Second Highest Salary

SELECT  MAX(salary) as SecondHighestSalary
FROM    Employee
WHERE   salary < (SELECT MAX(salary) FROM Employee);
