-- Creating Customer Table

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    location VARCHAR(100),
    email VARCHAR(100),
    date_joined DATE,
    phone_number VARCHAR(15),
    gender VARCHAR(10),
    birthdate DATE,
    loyalty_points INT,
    total_spent DECIMAL(15, 2)
);

-- Creating Products Table

CREATE TABLE products(
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    description TEXT,
    price DECIMAL(10, 2),
    inventory_count INT,
    category VARCHAR (100),
    supplier_id INT,
    created_at DATE,
    status VARCHAR(50)
);

-- Creating Suppliers Table (For product suppliers)

CREATE TABLE suppliers (
    suppliers_id INT PRIMARY Key,
    name VARCHAR(100),
    contact_info VARCHAR(100),
    location VARCHAR(100)

);


-- Creating Order_Items Table

CREATE TABLE orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(15, 2),
    status VARCHAR(50),
    date_shipped DATE,
    payment_method VARCHAR(50),
    shipping_address VARCHAR(200),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Creating Order_items Table

CREATE TABLE  order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL (10, 2),
    discount DECIMAL(5, 2),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Creating Discounts Table

CREATE TABLE discounts (
    discounts_id INT PRIMARY KEY,
    name VARCHAR(100),
    discount_percentage DECIMAL(5, 2),
    Start_date DATE,
    end_date DATE,
    product_category VARCHAR(100)
);

-- Creating Sales Channels Table

CREATE TABLE sales_channels (
    channel_id INT PRIMARY KEY,
    channel_name VARCHAR(100),
    channel_type VARCHAR(50),          -- E.g., Online, In-store, etc
    description TEXT
);

-- Inserting values into Customer Table

INSERT INTO customers (customer_id, name, location, email, date_joined, phone_number, gender, birthdate, loyalty_points, total_spent) VALUES
(1, 'Alice', 'New York', 'alice@example.com', '2022-05-15', '123-456-7890', 'Female', '1990-02-25', 150, 2500.50),
(2, 'Bob', 'California', 'bob@example.com', '2021-10-20', '987-654-3210', 'Male', '1985-03-10', 200, 3500.75),
(3, 'Charlie', 'Texas', 'charlie@example.com', '2023-07-10', '555-123-9876', 'Male', '1995-06-05', 120, 2200.00),
(4, 'David', 'Florida', 'david@example.com', '2021-02-11', '888-123-4567', 'Male', '1980-11-22', 250, 4500.30),
(5, 'Eva', 'California', 'eva@example.com', '2020-08-15', '777-234-5678', 'Female', '1992-04-14', 300, 5500.20),
(6, 'Frank', 'New York', 'frank@example.com', '2019-05-30', '666-345-6789', 'Male', '1993-01-18', 100, 1800.80),
(7, 'Grace', 'Texas', 'grace@example.com', '2022-11-23', '555-678-2345', 'Female', '1987-12-01', 180, 2900.60),
(8, 'Hannah', 'Florida', 'hannah@example.com', '2023-02-19', '444-567-8901', 'Female', '1998-07-25', 140, 2400.40),
(9, 'Ian', 'California', 'ian@example.com', '2020-06-10', '333-456-7892', 'Male', '1991-09-14', 220, 4000.50),
(10, 'Jack', 'Texas', 'jack@example.com', '2021-12-05', '222-234-5678', 'Male', '1994-10-03', 160, 2800.75);


INSERT INTO products (product_id, name, description, price, inventory_count, category, supplier_id, created_at, status) VALUES
(1, 'Model Car A', 'A detailed sports car model.', 29.99, 100, 'Sports Car', 1, '2022-01-15', 'Active'),
(2, 'Model Car B', 'A rugged truck model.', 39.99, 50, 'Truck', 2, '2021-11-20', 'Active'),
(3, 'Model Car C', 'A sleek sedan model.', 49.99, 75, 'Sedan', 3, '2023-06-10', 'Active'),
(4, 'Model Car D', 'A classic vintage car model.', 59.99, 40, 'Vintage', 1, '2022-03-15', 'Active'),
(5, 'Model Car E', 'A racing car model with high detail.', 69.99, 60, 'Racing', 2, '2023-02-01', 'Active'),
(6, 'Model Car F', 'An electric car model.', 79.99, 90, 'Electric', 3, '2022-08-05', 'Active'),
(7, 'Model Car G', 'A mini cooper model.', 19.99, 120, 'Compact', 1, '2021-09-23', 'Active'),
(8, 'Model Car H', 'A luxury car model with leather interiors.', 99.99, 30, 'Luxury', 2, '2022-10-11', 'Active'),
(9, 'Model Car I', 'A futuristic concept car model.', 89.99, 55, 'Concept', 3, '2023-05-15', 'Active'),
(10, 'Model Car J', 'A classic muscle car model.', 49.99, 85, 'Muscle', 1, '2022-07-10', 'Active');

INSERT INTO suppliers (suppliers_id, name, contact_info, location) VALUES
(1, 'Speed Models', 'contact@speedmodels.com', 'New York'),
(2, 'Rugged Cars', 'info@ruggedcars.com', 'California'),
(3, 'Sedan Automobiles', 'sales@sedanauto.com', 'Texas');

INSERT INTO orders (order_id, customer_id, order_date, total_amount, status, date_shipped, payment_method, shipping_address) VALUES
(1, 1, '2025-01-01', 59.98, 'Shipped', '2025-01-02', 'Credit Card', '123 Main St, New York'),
(2, 2, '2025-01-02', 39.99, 'Delivered', '2025-01-03', 'PayPal', '456 Oak St, California'),
(3, 3, '2025-01-03', 149.97, 'Shipped', '2025-01-04', 'Debit Card', '789 Pine St, Texas'),
(4, 4, '2025-01-04', 239.98, 'Delivered', '2025-01-05', 'Credit Card', '321 Elm St, Florida'),
(5, 5, '2025-01-05', 349.99, 'Shipped', '2025-01-06', 'PayPal', '654 Birch St, California'),
(6, 6, '2025-01-06', 179.99, 'Delivered', '2025-01-07', 'Debit Card', '987 Maple St, New York'),
(7, 7, '2025-01-07', 219.97, 'Shipped', '2025-01-08', 'Credit Card', '432 Cedar St, Texas'),
(8, 8, '2025-01-08', 99.98, 'Delivered', '2025-01-09', 'PayPal', '765 Walnut St, Florida'),
(9, 9, '2025-01-09', 129.98, 'Shipped', '2025-01-10', 'Debit Card', '876 Pine St, California'),
(10, 10, '2025-01-10', 249.97, 'Delivered', '2025-01-11', 'Credit Card', '543 Oak St, Texas');

INSERT INTO order_items (order_item_id, order_id, product_id, quantity, price, discount) VALUES
(1, 1, 1, 2, 29.99, 0),
(2, 2, 2, 1, 39.99, 5),
(3, 3, 3, 3, 49.99, 10),
(4, 4, 4, 4, 59.99, 0),
(5, 5, 5, 5, 69.99, 0),
(6, 6, 6, 2, 79.99, 5),
(7, 7, 7, 3, 19.99, 0),
(8, 8, 8, 2, 99.99, 15),
(9, 9, 9, 1, 89.99, 0),
(10, 10, 10, 2, 49.99, 10);


INSERT INTO discounts (discounts_id, name, discount_percentage, start_date, end_date, product_category) VALUES
(1, 'Winter Sale', 10, '2025-01-01', '2025-01-15', 'Sports Car'),
(2, 'Holiday Discount', 15, '2025-12-01', '2025-12-15', 'Truck'),
(3, 'Summer Promotion', 20, '2025-06-01', '2025-06-15', 'Electric');




INSERT INTO sales_channels (channel_id, channel_name, channel_type, description) VALUES
(1, 'Online Store', 'Online', 'E-commerce platform for selling products online'),
(2, 'Retail', 'In-store', 'Physical retail store for in-person purchases');


-- Understanding The Data(Exploratory Queries)

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;


-- Business  Queries

-- Product & Inventory Analysis
-- 📌  Finding the top 3 best-selling products

SELECT p.name, SUM(oi.quantity) AS total_sold
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_sold DESC
LIMIT 3;

-- 📌  Identifying  low-stock products (inventory < 50)

SELECT name, inventory_count FROM products
WHERE inventory_count < 50;


-- Customer Segmentation
-- 📌  Finding the top 5 highest-spending customers

SELECT c.name, c.email, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name, c.email
ORDER BY total_spent DESC
LIMIT 5;

-- 📌  Counting the number of customers from each location

SELECT location, COUNT(*) AS total_customers
FROM customers
GROUP BY location;

-- Sales & Revenue Analysis
-- 📌  Finding total revenue generated per product category
SELECT p.category, SUM(o.total_amount) AS total_revenue
FROM orders o
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.category
ORDER BY total_revenue DESC;

-- 📌  Calculating the average order value (AOV)

SELECT AVG(total_amount) AS avg_order_value
FROM orders;

-- 📌  Finding the top 3 highest-revenue customers using a CTE

WITH customer_spending AS(
    SELECT c.customer_id, c.name, SUM(o.total_amount) AS total_spent
    FROM customers c
    JOIN orders o ON c.customer_id = o.customer_id
    GROUP BY c.customer_id, c.name
)

SELECT name, total_spent
FROM customer_spending
ORDER BY total_spent DESC
LIMIT 3;

-- 📌  Ranking customers based on their spending

SELECT c.name, SUM(o.total_amount) AS total_spent,
RANK() OVER(ORDER BY SUM(o.total_amount) DESC) AS rank_position
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;


-- 📌  Finding customers who spent above the average order value

SELECT name, total_spent
FROM (
    SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name
) AS customer_spending
WHERE total_spent > (SELECT AVG(total_amount) FROM orders);


-- 📌  Finding the most popular product in each category

WITH product_sales As (
    SELECT p.category, p.name, SUM(oi.quantity) AS total_sold,
    RANK() OVER (PARTITION BY p.category ORDER BY SUM(oi.quantity) DESC) AS rank_position
    FROM order_items oi
    JOIN products p ON oi.product_id = p.product_id
    GROUP BY p.category, p.name
)

SELECT category, name, total_sold
FROM product_sales
WHERE rank_position = 1;


-- Analyzing Monthly Sales Trends

SELECT DATE_FORMAT(order_date, '%Y-%m') AS month,
SUM(total_amount) AS totsl_revenue,
COUNT(order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;


-- Identifying Repeat vs. One-Time Buyers

SELECT o.customer_id, c.name, COUNT(o.order_id) AS order_count,
       CASE 
           WHEN COUNT(o.order_id) = 1 THEN 'One-time Buyer'
           ELSE 'Repeat Buyer'
       END AS customer_type
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
GROUP BY o.customer_id, c.name;


-- Determining the Most Profitable Products

SELECT p.name, SUM(oi.quantity * p.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
GROUP BY p.name
ORDER BY total_revenue DESC
LIMIT 5;