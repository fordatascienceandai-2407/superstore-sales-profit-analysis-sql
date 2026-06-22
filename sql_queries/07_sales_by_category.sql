-- Business Question 7
-- Total Sales by Category

SELECT
    category,
    SUM(sales) AS total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;
