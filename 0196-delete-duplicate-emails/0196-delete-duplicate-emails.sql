
DELETE FROM Person
WHERE id IN(
    SELECT id
    FROM(
        SELECT
            id,
            email,
            DENSE_RANK() OVER(PARTITION BY email ORDER BY id) AS rnk
        FROM Person 
    ) t
    WHERE rnk > 1
)




