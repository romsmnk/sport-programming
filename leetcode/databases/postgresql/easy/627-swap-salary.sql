-- PostgreSQL
-- Problem: 627. Swap Salary

-- Runtime 208 ms Beats 72.73%
-- Memory 0.00 MB Beats 100.00%

UPDATE salary SET sex =
CASE sex
    WHEN 'm' THEN 'f'
    ELSE 'm'
END;
