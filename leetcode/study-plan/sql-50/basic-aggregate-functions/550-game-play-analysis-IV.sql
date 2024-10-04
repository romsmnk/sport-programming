-- PostgreSQL

-- Problem: 550. Game Play Analysis IV

-- Runtime 556 ms Beats 66.48%
-- Memory 0.00 MB Beats 100.00%

SELECT ROUND(COUNT(*)::NUMERIC / (SELECT COUNT(DISTINCT player_id) FROM activity) , 2) fraction
FROM activity
WHERE (player_id , event_date) IN (
        SELECT player_id , MIN(event_date) + 1 firstLog
        FROM activity
        GROUP BY 1 )
