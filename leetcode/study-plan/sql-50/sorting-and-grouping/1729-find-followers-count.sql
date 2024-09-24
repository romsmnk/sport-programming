-- PostgreSQL

-- problem: 1729. Find Followers Count

-- Runtime 291 ms Beats 83.09%
-- Memory 0.00 MB Beats 100.00%

SELECT
    user_id,
    COUNT(follower_id) AS followers_count
FROM
    Followers
GROUP BY
    1
ORDER BY
    1 ASC;
