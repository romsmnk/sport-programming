-- PostgreSQL

-- problem: 1141. User Activity for the Past 30 Days I

-- Runtime 377 ms Beats 76.58%
-- Memory 0.00 MB Beats 100.00%

SELECT
    activity_date as day,
    COUNT(DISTINCT user_id) as active_users
FROM
    Activity
WHERE
    activity_date BETWEEN '2019-06-28' AND '2019-07-27'
GROUP BY
    1
ORDER BY
    1;
