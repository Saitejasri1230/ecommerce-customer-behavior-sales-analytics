CREATE DATABASE ecommerce_analytics;
USE ecommerce_analytics;

CREATE TABLE sales (
    invoice_no VARCHAR(20),
    stock_code VARCHAR(20),
    description TEXT,
    quantity INT,
    invoice_date DATETIME,
    unit_price DECIMAL(10,2),
    customer_id INT,
    country VARCHAR(100),
    revenue DECIMAL(12,2)
);
DESCRIBE ecommerce_analytics.sales;