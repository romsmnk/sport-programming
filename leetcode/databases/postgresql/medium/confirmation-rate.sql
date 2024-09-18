-- problem: 1934. Confirmation Rate

-- Runtime 335 ms Beats 24.47%
-- Memory 0.00 MB Beats 100.00%

SELECT s.user_id,
       CASE
           WHEN COUNT(c.user_id) = 0 THEN 0.00::numeric
           WHEN SUM(CASE WHEN c.action = 'confirmed' THEN 1::numeric ELSE 0::numeric END) = COUNT(c.user_id) THEN ROUND(1, 2)
           ELSE ROUND(SUM(CASE WHEN c.action = 'confirmed' THEN 1::numeric ELSE 0::numeric END) / COUNT(c.user_id), 2)
       END AS confirmation_rate
FROM Signups s
LEFT JOIN Confirmations c ON s.user_id = c.user_id
GROUP BY s.user_id;

-- Runtime 256 ms Beats 69.47%
-- Memory 0.00 MB Beats 100.00%

SELECT      s.user_id,
            ROUND(COUNT(c.action) FILTER (WHERE c.action = 'confirmed')/COUNT(*)::decimal,2)
            AS confirmation_rate
FROM        Signups AS s
LEFT JOIN   Confirmations AS c
ON          s.user_id = c.user_id
GROUP BY    s.user_id;
