-- Business Question 1
-- Top 5 Customers by Sales

SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM orders
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 5;
