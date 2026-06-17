INSERT INTO customers VALUES
(1,'Rahul','Nagpur'),
(2,'Priya','Pune'),
(3,'Amit','Mumbai');

INSERT INTO orders VALUES
(101,1,50000),
(102,2,700),
(103,1,1200),
(104,3,15000);

SELECT SUM(amount) AS TotalRevenue
FROM orders;

SELECT customer_id,
SUM(amount) AS TotalSpent
FROM orders
GROUP BY customer_id;

SELECT c.city,
SUM(o.amount) AS CitySales
FROM customers c
JOIN orders o
ON c.customer_id=o.customer_id
GROUP BY c.city; 