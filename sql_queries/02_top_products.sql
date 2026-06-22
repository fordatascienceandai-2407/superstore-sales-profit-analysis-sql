-- Business Question 2
-- Top 5 Products by Sales

SELECT
    product_name,
    SUM(sales) AS total_sales
FROM orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;
