-- PostgreSQL
-- Problem: 178. Rank Scores

-- Runtime 206ms Beats 92.45%
-- Memory 0.00 MB Beats 100.00%

SELECT 
    score,
    DENSE_RANK() OVER (ORDER BY score DESC) AS rank
FROM Scores
ORDER BY 1 DESC;