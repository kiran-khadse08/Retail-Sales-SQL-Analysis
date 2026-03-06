#Project Title : Retail Sales Data Analysis using SQL

#Description:
#Designed a SQL database to store and manage retail sales data including customer, product, and order details.
#Performed data analysis using SQL queries such as GROUP BY, ORDER BY, SUM, and COUNT to identify sales trends.
#Analyzed top-selling products, customer purchasing behavior, and category-wise revenue from the dataset.
#Generated insights on city-wise sales performance and monthly sales trends to support business decision-making.

#Step 1: Select Database
USE gunjan;

#step 2: Create Table
CREATE TABLE orders (
order_id INT,
order_date DATE,
customer_name VARCHAR(100),
city VARCHAR(50),
product_name VARCHAR(100),
category VARCHAR(50),
quantity INT,
sales FLOAT
);

# step 3:Insert Sample Data (for testing)
INSERT INTO orders VALUES
(1,'2024-01-10','Rahul','Mumbai','Laptop','Electronics',1,50000),
(2,'2024-01-12','Amit','Pune','Mobile','Electronics',2,40000),
(3,'2024-02-01','Sneha','Delhi','Shoes','Fashion',3,6000),
(4,'2024-02-15','Riya','Nagpur','T-Shirt','Fashion',4,2000),
(5,'2024-03-05','Karan','Mumbai','Tablet','Electronics',1,20000);

#Step 4: Run Analysis Query
SELECT city, SUM(sales) AS city_sales
FROM orders
GROUP BY city
ORDER BY city_sales DESC;

#Query 2 — Sales by Category
SELECT category, SUM(sales) AS total_sales
FROM orders
GROUP BY category
ORDER BY total_sales DESC;

#Query 3 — City Wise Sales
SELECT city, SUM(sales) AS city_sales
FROM orders
GROUP BY city
ORDER BY city_sales DESC;


