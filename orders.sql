CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
amount INT,
FOREIGN KEY(customer_id)
REFERENCES customers(customer_id)
);