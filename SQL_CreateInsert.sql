use EcommerceWebsite

--Tables:
--users: Information about users.
--products: Information about products.
--categories: Information about product categories.
--orders: Information about orders placed.
--order_details: Details of products within each order.
--page_views: User page views on the website.

CREATE TABLE users (
    user_id INT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100),
    join_date DATE
);

INSERT INTO users (user_id, name, email, join_date) VALUES
(1, 'John Doe', 'john@example.com', '2023-01-01'),
(2, 'Jane Smith', 'jane@example.com', '2023-02-15'),
(3, 'Michael Brown', 'michael@example.com', '2023-03-20'),
(4, 'Emily Davis', 'emily@example.com', '2023-01-25'),
(5, 'Daniel Wilson', 'daniel@example.com', '2023-04-02'),
(6, 'Jessica Miller', 'jessica@example.com', '2023-02-18'),
(7, 'David Martinez', 'david@example.com', '2023-05-05'),
(8, 'Sarah Taylor', 'sarah@example.com', '2023-03-10'),
(9, 'James Anderson', 'james@example.com', '2023-01-30'),
(10, 'Karen Thomas', 'karen@example.com', '2023-04-15');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    name VARCHAR(100),
    category_id INT,
    price DECIMAL(10, 2)
);

INSERT INTO products (product_id, name, category_id, price) VALUES
(1, 'Laptop', 1, 1000.00),
(2, 'Smartphone', 2, 700.00),
(3, 'Tablet', 1, 500.00),
(4, 'Smartwatch', 2, 200.00),
(5, 'Camera', 3, 800.00),
(6, 'Headphones', 4, 150.00),
(7, 'Keyboard', 4, 100.00),
(8, 'Mouse', 4, 50.00),
(9, 'Monitor', 1, 300.00),
(10, 'Printer', 3, 250.00);


CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Gadgets'),
(3, 'Cameras'),
(4, 'Accessories');


CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2)
);

INSERT INTO orders (order_id, user_id, order_date, total_amount) VALUES
(1, 1, '2023-03-01', 1700.00),
(2, 2, '2023-03-05', 700.00),
(3, 3, '2023-04-01', 800.00),
(4, 4, '2023-04-10', 200.00),
(5, 5, '2023-04-15', 1500.00),
(6, 6, '2023-05-01', 300.00),
(7, 7, '2023-05-05', 1200.00),
(8, 8, '2023-05-10', 250.00),
(9, 9, '2023-05-15', 1000.00),
(10, 10, '2023-05-20', 500.00);




CREATE TABLE order_details (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10, 2)
);

INSERT INTO order_details (order_detail_id, order_id, product_id, quantity, price) VALUES
(1, 1, 1, 1, 1000.00),
(2, 1, 2, 1, 700.00),
(3, 2, 2, 1, 700.00),
(4, 3, 5, 1, 800.00),
(5, 4, 4, 1, 200.00),
(6, 5, 1, 1, 1000.00),
(7, 5, 3, 1, 500.00),
(8, 6, 6, 2, 150.00),
(9, 7, 9, 1, 300.00),
(10, 7, 1, 1, 900.00),
(11, 8, 7, 1, 100.00),
(12, 9, 1, 1, 1000.00),
(13, 10, 10, 2, 250.00);




CREATE TABLE page_views (
    view_id INT PRIMARY KEY,
    user_id INT,
    product_id INT,
    view_date DATE
);

INSERT INTO page_views (view_id, user_id, product_id, view_date) VALUES
(1, 1, 1, '2023-02-28'),
(2, 1, 2, '2023-02-28'),
(3, 2, 3, '2023-02-28'),
(4, 2, 4, '2023-02-28'),
(5, 3, 5, '2023-03-01'),
(6, 4, 6, '2023-03-01'),
(7, 5, 7, '2023-03-02'),
(8, 6, 8, '2023-03-02'),
(9, 7, 9, '2023-03-03'),
(10, 8, 10, '2023-03-03');
