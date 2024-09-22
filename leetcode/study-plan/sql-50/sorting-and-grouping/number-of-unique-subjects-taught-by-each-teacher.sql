-- PostgreSQL

-- problem: 2356. Number of Unique Subjects Taught by Each Teacher

-- Runtime 549 ms Beats 81.12%
-- Memory 0.00 MB Beats 100.00%

SELECT
    teacher_id,
    COUNT(DISTINCT subject_id) as cnt
FROM
    Teacher
GROUP BY
    1;
