-- Business Question 12
-- Rank Customers by Sales

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    RANK() OVER (
        ORDER BY SUM(sales) DESC
    ) AS sales_rank
FROM orders
GROUP BY customer_name;
