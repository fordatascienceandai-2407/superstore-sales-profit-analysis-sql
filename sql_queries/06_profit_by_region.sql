-- Business Question 6
-- Total Profit by Region

SELECT
    region,
    SUM(profit) AS total_profit
FROM orders
GROUP BY region
ORDER BY total_profit DESC;
