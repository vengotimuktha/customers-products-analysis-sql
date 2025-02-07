# customers-products-analysis-sql
SQL project analyzing on customer behavior and product sales.

Here's a detailed and humanized README for your "Customers and Products Analysis Using SQL" project:

---

# Customers and Products Analysis Using SQL

## Project Overview
This project focuses on performing data analysis on a retail database involving customers, products, orders, and sales. The primary goal of this analysis is to gain insights into customer behavior, product performance, and sales trends using SQL queries. The database contains multiple tables, such as `customers`, `products`, `orders`, `order_items`, `suppliers`, and more, which allow for in-depth analysis of the retail business operations.

## Key Features
- **Customer Insights**: Analyzing customer spending patterns, segmenting customers based on location, and identifying the top-spending customers.
- **Product and Inventory Analysis**: Examining product performance, identifying low-stock products, and determining the best-selling items.
- **Sales & Revenue Insights**: Investigating revenue generation across product categories and calculating average order value (AOV).
- **Discount and Promotions**: Analyzing the impact of discounts on sales and identifying the most profitable products.
- **Sales Trends**: Evaluating monthly sales trends and distinguishing between repeat buyers and one-time customers.

## Data Structure
The project uses the following tables to store and analyze data:

- **customers**: Stores information about customers, such as name, location, email, and loyalty points.
- **products**: Contains product details including name, description, price, and inventory count.
- **suppliers**: Lists suppliers who provide the products.
- **orders**: Tracks customer orders, including order date, status, and total amount.
- **order_items**: Stores items associated with each order, such as quantity and price.
- **discounts**: Contains information on available discounts and promotional offers.
- **sales_channels**: Provides details about different sales channels (e.g., online store, retail).

## SQL Queries
The project includes several SQL queries aimed at providing key insights:

### 1. Product & Inventory Analysis
- **Top 3 Best-Selling Products**: Finds the products with the highest sales volume.
- **Low-Stock Products**: Identifies products with inventory counts less than 50.
  
### 2. Customer Segmentation
- **Top 5 Highest-Spending Customers**: Displays the customers who have spent the most money.
- **Customer Count by Location**: Counts the number of customers in each location.
  
### 3. Sales & Revenue Analysis
- **Total Revenue by Product Category**: Calculates revenue generated per product category.
- **Average Order Value (AOV)**: Computes the average value of orders.
  
### 4. Customer Behavior Analysis
- **Top 3 Highest-Revenue Customers**: Uses a CTE to identify the top customers by revenue.
- **Ranking Customers by Spending**: Ranks customers based on their total spending.
- **Repeat vs. One-Time Buyers**: Differentiates customers who made multiple purchases from those who bought only once.
  
### 5. Sales Trends & Profitability
- **Monthly Sales Trends**: Analyzes revenue and order trends by month.
- **Most Profitable Products**: Identifies the products that generate the highest revenue.

## How to Use This Project
1. Clone the repository to your local machine:
   ```bash
   [git clone https://github.com/vengotimuktha/customers-products-analysis-sql.git](https://github.com/vengotimuktha/customers-products-analysis-sql.git)
   ```

2. Set up the database with the provided SQL schema and insert sample data into the tables.

3. Run the provided SQL queries to get insights on customer behavior, sales trends, and product performance.

4. Customize the queries or add more as needed to explore additional insights.

## Technologies Used
- SQL (Structured Query Language)
- MySQL or PostgreSQL (compatible with any relational database)

## Conclusion
This project is an excellent starting point for anyone interested in learning how to perform business analytics with SQL. It provides key insights into customer behavior, product performance, and sales trends, which can help businesses make informed decisions to improve customer engagement and maximize profitability.

---

