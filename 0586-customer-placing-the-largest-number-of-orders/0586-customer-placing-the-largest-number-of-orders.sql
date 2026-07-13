# Write your MySQL query statement below
WITH OrdersRank AS(
    SELECT
        customer_number,
        COUNT(*) AS total_order
    FROM Orders
    GROUP BY customer_number
)
SELECT customer_number
FROM OrdersRank
ORDER BY total_order DESC
LIMIT 1;
