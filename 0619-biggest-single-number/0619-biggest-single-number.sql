# Write your MySQL query statement below
WITH MySingleNumbers AS(
    SELECT
        num,
        COUNT(*) AS total_num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(*) = 1
)
SELECT MAX(num) AS num
FROM MySingleNumbers;