-- PostgreSQL
-- Problem: 1050. Actors and Directors Who Cooperated At Least Three Times

-- Runtime 315 ms Beats 75.16%
-- Memory 0.00 MB Beats 100.00%

SELECT
    ActorDirector.actor_id,
    ActorDirector.director_id
FROM 
    ActorDirector
GROUP BY
    ActorDirector.actor_id,
    ActorDirector.director_id
HAVING 
    COUNT(ActorDirector.actor_id) >= 3 
AND 
    COUNT(ActorDirector.director_id) >= 3;