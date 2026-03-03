-- Retail Sales SQL Analysis Project

-- View all data
SELECT * FROM superstore;

-- Total Sales
SELECT SUM(sales) AS total_sales
FROM superstore;

-- Top 5 Products by Sales
SELECT product_name, SUM(sales) AS total_sales
FROM superstore
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

-- Products Above Average Price
SELECT product_name, price
FROM superstore
WHERE price > (SELECT AVG(price) FROM superstore);
