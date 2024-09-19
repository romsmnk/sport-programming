-- Runtime 1514 ms Beats 10.48%
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
        percentage DESC,
        contest_id ASC;
