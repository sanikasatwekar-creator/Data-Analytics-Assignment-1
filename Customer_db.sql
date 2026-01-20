Create database Customer_db;
use Customer_db;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50) NOT NULL,
    order_date DATE NOT NULL,
    amount_spent DECIMAL(10, 2) NOT NULL
);

INSERT INTO customers 
(customer_id, customer_name, city, order_date, amount_spent)
VALUES 
(1, 'John Smith', 'New York', '2026-01-05', 550.00),
(2, 'Crispina Fernandis', 'New York', '2026-01-10', 300.00),
(3, 'Christina Bascow', 'New York', '2026-01-18', 200.00),
(4, 'Sarah White', 'New York', '2026-01-12', 600.00),
(5, 'Edwin Lal', 'New York', '2026-01-02', 700.00);

SELECT 
    customer_id,
    customer_name,
    SUM(amount_spent) AS total_spent
FROM customers
WHERE city = 'New York'
  AND order_date >= '2026-01-01'
  AND order_date < '2026-02-01'
GROUP BY customer_id, customer_name
HAVING SUM(amount_spent) > 500
ORDER BY total_spent DESC;



