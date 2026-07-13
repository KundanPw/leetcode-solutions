# Write your MySQL query statement below

WITH OrderCompany AS (
    SELECT 
        o.order_id AS order_id,
        o.sales_id AS sales_id
    FROM Orders o
    INNER JOIN Company c
        ON o.com_id = c.com_id
    WHERE c.name = 'Red'
)
SELECT s.name AS name
FROM SalesPerson s
LEFT JOIN OrderCompany oc
    ON s.sales_id = oc.sales_id
WHERE oc.sales_id IS NULL;