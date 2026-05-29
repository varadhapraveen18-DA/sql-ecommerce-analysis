CREATE TABLE customers(
    customer_id INT primary key, 
    customer_name varchar(100), 
    city varchar(50));
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE
);
INSERT INTO customers VALUES
(1,'Rahul','Mumbai'),
(2,'Anjali','Chennai'),
(3,'Karan','Delhi');
INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),
(102,'Phone','Electronics',30000),
(103,'Chair','Furniture',5000);
INSERT INTO orders VALUES
(1001,1,101,1,'2025-01-10'),
(1002,2,102,2,'2025-01-11'),
(1003,3,103,3,'2025-01-12');