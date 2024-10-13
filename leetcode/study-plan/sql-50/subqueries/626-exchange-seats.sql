-- PostgreSQL

-- problem: 626. Exchange Seats

-- Runtime 177 ms Beats 89.90%
-- Memory 0.00 MB Beats 100.00%

SELECT
    id,
    CASE WHEN (id % 2 = 0) THEN
        (SELECT student FROM Seat WHERE id = s1.id-1)
    ELSE
        CASE WHEN (id = (SELECT MAX(id) FROM Seat)) THEN student ELSE
            (SELECT student FROM Seat WHERE id = s1.id+1)
        END
    END as student
FROM
    Seat s1
GROUP By
    1, s1.student
ORDER BY
    1;