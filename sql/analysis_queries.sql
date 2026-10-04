-- ============================================================
-- E-COMMERCE SALES & CUSTOMER BEHAVIOR ANALYTICS
-- SQL ANALYSIS QUERIES
-- ============================================================

USE ecommerce_analytics;


-- 1. Check sample records
SELECT *
FROM sales
LIMIT 10;


-- 2. Total Revenue
SELECT
    ROUND(SUM(revenue), 2) AS total_revenue
FROM sales;


-- 3. Monthly Revenue Trend
SELECT
    DATE_FORMAT(invoice_date, '%Y-%m') AS month,
    ROUND(SUM(revenue), 2) AS monthly_revenue
FROM sales
GROUP BY DATE_FORMAT(invoice_date, '%Y-%m')
ORDER BY month;


-- 4. Top 10 Products by Revenue
SELECT
    stock_code,
    description,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM sales
GROUP BY stock_code, description
ORDER BY total_revenue DESC
LIMIT 10;


-- 5. Top 10 Customers by Spending
SELECT
    customer_id,
    ROUND(SUM(revenue), 2) AS total_spent
FROM sales
WHERE customer_id IS NOT NULL
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 10;


-- 6. Revenue by Country
SELECT
    country,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM sales
GROUP BY country
ORDER BY total_revenue DESC;


-- 7. Average Order Value (AOV)
SELECT
    ROUND(
        SUM(revenue) / COUNT(DISTINCT invoice_no),
        2
    ) AS average_order_value
FROM sales;


SELECT COUNT(*) AS total_rows
FROM ecommerce_analytics.sales;

SELECT *
FROM ecommerce_analytics.sales
LIMIT 10;

