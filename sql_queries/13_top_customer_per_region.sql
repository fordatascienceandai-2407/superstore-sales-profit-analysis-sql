-- Top Customer in Each Region

WITH customer_sales AS (
    SELECT
        region,
        customer_name,
        SUM(sales) AS total_sales,
        RANK() OVER (
            PARTITION BY region
            ORDER BY SUM(sales) DESC
        ) AS sales_rank
    FROM orders
    GROUP BY region, customer_name
)

SELECT *
FROM customer_sales
WHERE sales_rank = 1;
