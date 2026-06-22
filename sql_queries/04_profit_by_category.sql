-- Business Question 4
-- Total Profit by Category

SELECT
    category,
    SUM(profit) AS total_profit
FROM orders
GROUP BY category
ORDER BY total_profit DESC;
