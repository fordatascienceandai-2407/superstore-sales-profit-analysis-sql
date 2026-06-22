-- Business Question 10
-- Orders with Sales Above Average

SELECT *
FROM orders
WHERE sales > (
    SELECT AVG(sales)
    FROM orders
);
