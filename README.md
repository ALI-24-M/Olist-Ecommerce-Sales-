# Olist Brazilian E-Commerce Sales Data Analysis

## 📌 Project Overview
This project involves importing the Brazilian E-Commerce (Olist) dataset from Kaggle into a relational SQL database, performing complex analytical queries using JOIN and GROUP BY operations, and visualizing the key business insights using Python (pandas & matplotlib).

---

## 🛠️ Tech Stack & Tools
* *Database:* PostgreSQL / MySQL / SQLite (Choose yours)
* *Analysis:* SQL
* *Visualization:* Python (Pandas, Matplotlib, Seaborn)
* *Version Control:* GitHub

---

## 📐 Database Schema & Architecture
The Olist dataset consists of multiple relational tables (customers, orders, order items, products, sellers, etc.). Below is how the tables are connected via Primary and Foreign keys:

* *orders* connects to *customers* via customer_id
* *order_items* connects to *orders* via order_id and *products* via product_id

(Optional: Insert an Entity-Relationship Diagram (ERD) image here if you generated one)

---

## 🔍 Key SQL Queries & Analytics
Here are some of the primary business questions answered using SQL:

### 1. Top 10 Product Categories by Total Revenue
```sql
SELECT 
    p.product_category_name,
    ROUND(SUM(oi.price)::numeric, 2) AS total_revenue,
    COUNT(oi.order_id) AS total_orders
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.product_category_name
ORDER BY total_revenue DESC
LIMIT 10;
