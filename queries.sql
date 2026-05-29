-- customer and product details:
SELECT 
c.customer_name,
p.product_name,
o.quantity,
o.order_date
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN products p
ON o.product_id = p.product_id;

-- customer and product details:
SELECT
c.customer_name,
p.product_name,
o.quantity,
c.city
FROM orders o
JOIN customers c
ON c.customer_id = o.customer_id
JOIN products p
ON p.product_id = o.product_id;

-- what is the total quantity sold?
select
sum(quantity) as total_quantity_sold
from orders;

-- How many orders are there?
SELECT 
COUNT(order_id) AS total_orders
FROM orders;

-- What is the total revenue:
select
sum(p.price * o.quantity) as total_revenue
from orders o
join products p
on o.product_id = p.product_id;


-- What is the total revenue and also using group by and order by:
select 
p.product_name,
sum(p.price * o.quantity) as total_revenue
from orders o
join products p
on o.product_id = p.product_id
group by product_name
order by total_revenue desc;

-- Show only Electronics products revenue:
SELECT
p.category,
SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
WHERE p.category = 'Electronics'
GROUP BY p.category;

-- Show only categories whose revenue is greater than 50000.
SELECT
p.category,
SUM(p.price * o.quantity) AS revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
GROUP BY p.category
HAVING revenue > 50000;

-- What is the average product price?
SELECT
AVG(price) AS average_price
FROM products;

-- max and min price:
SELECT
MAX(price) AS highest_price,
MIN(price) AS lowest_price
FROM products;

-- Which customers spent the most money?
SELECT
c.customer_name,
SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN products p
ON o.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC;

-- Show TOP 1 customer only
SELECT
c.customer_name,
SUM(p.price * o.quantity) AS total_spent
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
JOIN products p
ON o.product_id = p.product_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 1;

-- unique cities:
SELECT DISTINCT city
FROM customers;