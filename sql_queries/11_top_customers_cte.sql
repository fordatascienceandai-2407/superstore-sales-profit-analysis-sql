-- Business Question 11
-- Top Customers Using CTE

WITH customer_sales AS (
    SELECT
        customer_name,
        SUM(sales) AS total_sales
    FROM orders
    GROUP BY customer_name
)

SELECT *
FROM customer_sales
ORDER BY total_sales DESC
LIMIT 10;
