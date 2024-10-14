-- PostgreSQL

-- Problem: 602. Friend Requests II: Who Has the Most Friends

-- Runtime 179 ms Beats 78.86%
-- Memory 0.00 MB Beats 100.00%

WITH all_ids AS (
    SELECT requester_id AS id
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id
    FROM RequestAccepted
)

SELECT
    id,
    COUNT(id) AS num
FROM
    all_id
GROUP BY
    1
ORDER BY 2 DESC
LIMIT 1;
