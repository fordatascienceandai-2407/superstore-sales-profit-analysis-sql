-- Business Question 9
-- Products with Overall Loss

SELECT
    product_name,
    SUM(profit) AS total_profit
FROM orders
GROUP BY product_name
HAVING SUM(profit) < 0
ORDER BY total_profit;
