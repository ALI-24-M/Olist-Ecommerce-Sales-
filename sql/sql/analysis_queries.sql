-- SQL Analytical Query: Top 10 States by Total Orders and Sales
SELECT 
    c.customer_state,
    COUNT(o.order_id) AS total_orders,
    ROUND(SUM(oi.price)::numeric, 2) AS total_sales
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
GROUP BY c.customer_state
ORDER BY total_orders DESC
LIMIT 10;
