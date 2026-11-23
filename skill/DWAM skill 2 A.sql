CREATE TABLE category (
    category_id SERIAL PRIMARY KEY,
    category_name VARCHAR(50) UNIQUE
);
CREATE TABLE product (
    product_id SERIAL PRIMARY KEY,
    product_name VARCHAR(100),
    brand VARCHAR(50),
    category_id INT,
    FOREIGN KEY (category_id)
    REFERENCES category(category_id)
);
CREATE TABLE customer (
    customer_id SERIAL PRIMARY KEY,
    customer_name VARCHAR(100),
    gender VARCHAR(10),
    city VARCHAR(50),
    state VARCHAR(50)
);
CREATE TABLE store (
    store_id SERIAL PRIMARY KEY,
    store_name VARCHAR(100),
    city VARCHAR(50),
    state VARCHAR(50)
);
CREATE TABLE sales (
    sales_id SERIAL PRIMARY KEY,
    transaction_date DATE,
    customer_id INT,
    store_id INT,

    FOREIGN KEY (customer_id)
    REFERENCES customer(customer_id),

    FOREIGN KEY (store_id)
    REFERENCES store(store_id)
);
CREATE TABLE sales_details (
    sales_detail_id SERIAL PRIMARY KEY,
    sales_id INT,
    product_id INT,
    quantity INT,
    unit_price NUMERIC(10,2),
    discount NUMERIC(10,2),

    FOREIGN KEY (sales_id)
    REFERENCES sales(sales_id),

    FOREIGN KEY (product_id)
    REFERENCES product(product_id)
);
INSERT INTO category(category_name)
VALUES
('Electronics'),
('Accessories'),
('Furniture');
INSERT INTO product
(product_name,brand,category_id)
VALUES
('Laptop','Dell',1),
('Mobile','Samsung',1),
('Mouse','Logitech',2),
('Keyboard','HP',2),
('Chair','Godrej',3);
INSERT INTO customer
(customer_name,gender,city,state)
VALUES
('Rahul','Male','Hyderabad','Telangana'),
('Priya','Female','Vijayawada','Andhra Pradesh'),
('Amit','Male','Chennai','Tamil Nadu'),
('Sneha','Female','Bengaluru','Karnataka');
INSERT INTO store
(store_name,city,state)
VALUES
('Central Mall','Hyderabad','Telangana'),
('City Mall','Vijayawada','Andhra Pradesh'),
('Mega Store','Chennai','Tamil Nadu');
INSERT INTO sales
(transaction_date,customer_id,store_id)
VALUES
('2026-01-10',1,1),
('2026-01-15',2,2),
('2026-02-05',3,3),
('2026-02-20',4,1);
INSERT INTO sales_details
(sales_id,product_id,quantity,unit_price,discount)
VALUES
(1,1,2,50000,2000),
(1,3,1,1000,0),
(2,2,2,20000,1000),
(3,1,1,50000,5000),
(4,4,3,2000,0);
SELECT * FROM category;

SELECT * FROM product;

SELECT * FROM customer;

SELECT * FROM store;

SELECT * FROM sales;

SELECT * FROM sales_details;









