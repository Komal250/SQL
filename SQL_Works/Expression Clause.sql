 CREATE SCHEMA IF NOT EXISTS where_practice;

USE where_practice;

CREATE TABLE customers(
cust_id INT PRIMARY KEY AUTO_INCREMENT,
name VARCHAR(100),
city VARCHAR(100),
age INT,
purchase_amount DECIMAL(10,2),
last_purchase_date DATE
);


INSERT INTO customers (name,city,age,purchase_amount,last_purchase_date)
VALUES('Amit','Pune',28,1500,'2025-01-10'),
      ('Kiran','Mumbai',35,2700,'2025-12-25'),
      ('Ravi','Kolkata',42,800,'2025-02-05'),
      ('Kiran','Delhi',31,1200,'2024-11-10'),
      ('Smita','Banglore',22,500,'2025-01-15');
      
      
SELECT*FROM customers WHERE city='Pune';

SELECT*FROM customers WHERE age>30; 

SELECT*FROM customers WHERE age BETWEEN 25 AND 40; ----------- WHERE WITH BETWEEN

 SELECT*FROM customers WHERE name LIKE 'A%';   ---…
[9:12 pm, 29/1/2026] Komal shinde: CREATE SCHEMA IF NOT EXISTS expression_demo;
USE expression_demo;

CREATE TABLE orders (
ORDER_id INT PRIMARY KEY AUTO_INCREMENT,
product_name VARCHAR(100),
quantity INT,
price DECIMAL(10.2),
discount_percentage INT,
order_date DATE
);

INSERT INTO orders (product_name, quantity, price, discount_percentage, order_date)
VALUES ('latop', 2, 55000, 10, '2025-02-01'),
('mouse', 5, 500, 5, '2025-02-10'),
('keybord', 1, 1500, 0, '2025-02-28'),
('monitor', 3, 8000, 15, '2025-02-20'),
('hedphone', 4, 2000, 20, '2025-02-05');
SELECT * FROM orders;

SELECT product_name,
quantity * price AS Total_Cost
FROM orders;

SELECT
product_name,
price,
discount_percentage,
price - (price * discount_percentage / 100) AS Price_After_Discount from orders;

-- data expressoin
INSERT…