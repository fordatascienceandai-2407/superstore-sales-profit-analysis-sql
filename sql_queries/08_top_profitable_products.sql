-- Business Question 8
-- Top 10 Most Profitable Products

SELECT
    product_name,
    SUM(profit) AS total_profit
FROM orders
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;
