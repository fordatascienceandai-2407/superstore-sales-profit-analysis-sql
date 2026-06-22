-- Monthly Sales Trend

SELECT
    DATE_TRUNC('month', order_date) AS month,
    SUM(sales) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;
