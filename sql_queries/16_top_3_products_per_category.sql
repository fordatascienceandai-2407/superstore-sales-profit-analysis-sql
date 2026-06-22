-- Top 3 Products in Each Category

WITH ranked_products AS (
    SELECT
        category,
        product_name,
        SUM(sales) AS total_sales,
        ROW_NUMBER() OVER (
            PARTITION BY category
            ORDER BY SUM(sales) DESC
        ) AS rn
    FROM orders
    GROUP BY category, product_name
)

SELECT *
FROM ranked_products
WHERE rn <= 3;
