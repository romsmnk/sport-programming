-- PostgreSQL

-- problem: 1527. Patients With a Condition

-- Runtime 165 ms Beats 95.34%
-- Memory 0.00 MB Beats 100.00%

SELECT * FROM Patients WHERE conditions LIKE '% DIAB1%' OR conditions LIKE 'DIAB1%';
