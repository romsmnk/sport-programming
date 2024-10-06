-- PostgreSQL
-- Problem: 511. Game Play Analysis I

-- Runtime 489 ms Beats 92.52%
-- Memory 0.00 MB Beats 100.00%

SELECT
    player_id,
    MIN(event_date) as first_login
FROM
    Activity
GROUP BY
    1;
