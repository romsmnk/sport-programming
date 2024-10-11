-- PostgreSQL

-- Problem: 1204. Last Person to Fit in the Bus

-- Runtime 888 ms Beats 8.94%
-- Memory 0.00 MB Beats 100.00%

SELECT person_name FROM Queue q1
    WHERE (
        SELECT SUM(q2.weight) FROM Queue q2
        WHERE q2.turn <= q1.turn
    ) <= 1000
ORDER BY turn DESC
LIMIT 1;
