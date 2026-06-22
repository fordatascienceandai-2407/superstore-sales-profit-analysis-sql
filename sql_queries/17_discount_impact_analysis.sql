-- Discount Impact on Profit

SELECT
    discount,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit
FROM orders
GROUP BY discount
ORDER BY discount;
