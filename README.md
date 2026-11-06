# E-commerce Database & SQL Reports

## 📌 Project Overview

This project is a relational database for a simple e-commerce system, built using **PostgreSQL**.

It manages customers, products, categories, and orders. It also includes SQL queries for generating useful business reports and analyzing sales data.

## 🛠️ Technologies Used

* PostgreSQL

* SQL

* pgAdmin (Database Management Tool)

## 🗄️ Database Structure

The database consists of the following main tables:

| Table           | Description                                                |
| --------------- | ---------------------------------------------------------- |
| `Customer`      | Stores customer information.                               |
| `Product`       | Stores product details.                                    |
| `Category`      | Stores product categories.                                 |
| `Order`         | Stores customer orders and their dates.                    |
| `Order_details` | Stores the products and quantities included in each order. |

### Relationships

* A customer can place multiple orders.

* A category can contain multiple products.

* An order can contain multiple products.

* A product can appear in multiple orders.

* `Order_details` connects orders and products.

## 📊 SQL Reports

The project includes SQL queries for generating the following reports:

### 1. Daily Sales Report

Generates a report for a specific date, including:

* Total revenue.

* Total number of orders.

### 2. Top-Selling Products

Retrieves products ranked by the number of units sold within a specified period.

The report includes:

* Product name.

* Product description.

* Category name.

* Total units sold.

### 3. Customer Spending Report

Retrieves customers whose total order amount exceeds a specified threshold within a given period.

The report includes:

* Customer full name.

* Total order amount.

## 📚 SQL Concepts Practiced

* SELECT statements

* Filtering using WHERE

* Sorting using ORDER BY

* INNER JOIN

* Aggregate functions (`SUM`, `COUNT`)

* GROUP BY and HAVING

* Date and time filtering

* String concatenation

* SQL constraints

* Primary and foreign keys

## 🚀 Getting Started

1. Install PostgreSQL.
2. Create a new database.
3. Execute the database creation script.
4. Insert any data you want in the tables.
5. Run the SQL report queries.

## 🎯 Project Goals

The main goal of this project is to practice relational database design and develop practical SQL skills by solving real-world e-commerce reporting requirements.
