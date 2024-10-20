CREATE TABLE customers (
    customer_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100),
    phone VARCHAR(20),
    country VARCHAR(50),
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE products (
    product_id INT IDENTITY(1,1) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    created_at DATETIME DEFAULT GETDATE()
);

CREATE TABLE orders (
    order_id INT IDENTITY(1,1) PRIMARY KEY,
    customer_id INT,
    product_id INT,
    order_date DATETIME DEFAULT GETDATE(),
    quantity INT NOT NULL,
    total_price DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE employees (
    employee_id INT IDENTITY(1,1) PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    position VARCHAR(100),
    salary DECIMAL(10, 2),
    created_at DATETIME DEFAULT GETDATE()
);

INSERT INTO products (product_name, price) VALUES
('A', 24.99),
('B', 19.99);


INSERT INTO customers (first_name, last_name, email, phone,  country) VALUES
('ahmad', 'al', 'Osama@example.com', '1234567890',  'Jordan'),
('osama', 'naser', 'Os@example.com', '0987654321',  'Jordan');


INSERT INTO orders (customer_id, product_id, order_date, quantity, total_price) VALUES
(1, 1, '2024-10-10 14:30:00', 2, 49.98),
(2, 2, '2024-10-11 16:00:00', 1, 19.99);


INSERT INTO employees (first_name, last_name, position, salary) VALUES
('mo', 'ah', 'Sales Manager', 50000.00),
('os', 'na', 'Customer Support', 40000.00);
