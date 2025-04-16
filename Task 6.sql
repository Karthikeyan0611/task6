CREATE DATABASE IF NOT EXISTS sales_db;
USE sales_db;

CREATE TABLE sales_data (
    order_id INT,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);
INSERT INTO sales_data (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-10', 200.00, 101),
(2, '2024-01-15', 300.00, 102),
(3, '2024-02-05', 150.00, 103),
(4, '2024-02-20', 400.00, 101),
(5, '2024-03-10', 180.00, 104);
SELECT * FROM sales_data;

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS total_orders
FROM 
    sales_data
GROUP BY 
    YEAR(order_date), MONTH(order_date)
ORDER BY 
    order_year, order_month;
