-- PostgreSQL
-- Problem: 1890. The Latest Login in 2020

-- Runtime 415 ms Beats 67.90%
-- Memory 0.00 MB Beats 100.00%

SELECT
    user_id,
    MAX(time_stamp) as last_stamp
FROM
    Logins
WHERE
    time_stamp::TEXT LIKE '2020%'
GROUP BY
    1;
