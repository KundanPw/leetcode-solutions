# Write your MySQL query statement below
WITH InvolveActorDirector AS(
    SELECT
        actor_id,
        director_id,
        COUNT(*) AS director_involvement_times
    FROM ActorDirector
    GROUP BY actor_id, director_id
)
SELECT 
    actor_id, 
    director_id
FROM InvolveActorDirector
WHERE director_involvement_times >= 3;

