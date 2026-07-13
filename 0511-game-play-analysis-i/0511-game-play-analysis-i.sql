# Write your MySQL query statement below
WITH PlayerActivity AS(
    SELECT
        player_id,
        event_date,
        DENSE_RANK() OVER(PARTITION BY player_id ORDER BY event_date ASC) AS rnk
    FROM Activity
)

SELECT 
    player_id,
    event_date AS first_login
FROM PlayerActivity
WHERE rnk = 1;


