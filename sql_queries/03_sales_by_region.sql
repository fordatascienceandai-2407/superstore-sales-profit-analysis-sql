-- Business Question 3
-- Total Sales by Region

SELECT
    region,
    SUM(sales) AS total_sales
FROM orders
GROUP BY region
ORDER BY total_sales DESC; 
