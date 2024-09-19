-- Runtime 967 ms Beats 83.89%
-- Memory 0.00 MB Beats 100.00%

-- problem: 1633. Percentage of Users Attended a Contest

SELECT
        contest_id,
        ROUND(COUNT(DISTINCT user_id) * 100 / (SELECT COUNT(user_id) FROM Users)::numeric, 2)
        as percentage
FROM
        Register
GROUP BY
        contest_id
ORDER BY
        2 DESC,
        1;

-- Runtime 1084 ms Beats 57.41%
-- Memory 0.00 MB Beats 100.00%

WITH count_users AS (
    SELECT COUNT(DISTINCT user_id) AS users
    FROM users
)
SELECT 
    contest_id,
    ROUND(CAST(COUNT(DISTINCT user_id) AS NUMERIC) / MAX(users) * 100, 2) AS percentage
FROM Register, count_users
GROUP BY 1
ORDER BY 2 DESC, 1;
