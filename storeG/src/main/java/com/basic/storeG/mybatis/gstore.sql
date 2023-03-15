create database gstore;
use gstore;

create table items(
item_no int auto_increment primary key,
qty int,
img json,
pName varchar(50),
price int,
category int,
rating decimal(1,1),
data json,
register_date date

);

CREATE TABLE members (
  member_no INT AUTO_INCREMENT PRIMARY KEY,
  id VARCHAR(50),
  pw VARCHAR(50),
  name VARCHAR(50),
  address VARCHAR(255),
  mileage INT,
  coupons JSON,
  wishlist JSON,
  cart JSON,
  order_history INT,
  money INT,
  review TEXT,
  phone VARCHAR(20),
  email VARCHAR(255)
);

CREATE TABLE orders (
  order_no INT AUTO_INCREMENT PRIMARY KEY,
  address VARCHAR(255),
  name VARCHAR(50),
  phone_number VARCHAR(20),
  sales_price INT,
  discount_price INT,
  total_price INT,
  items JSON,
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  delivery_status int
);

CREATE TABLE reviews (
  review_no INT AUTO_INCREMENT PRIMARY KEY,
  writer VARCHAR(50),
  content TEXT,
  write_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  rating INT
);

select * from reviews;
select * from items;
select * from members;
select * from orders;

INSERT INTO members (id, pw, name, address, mileage, coupons, wishlist, cart, order_history, money, review, phone, email)
VALUES 
('john123', 'password123', 'John Smith', '123 Main St, Anytown USA', 100, '{"coupon1": {"expiry": "2023-12-31", "discount": 10}, "coupon2": {"expiry": "2023-06-30", "discount": 20}}', '["product1", "product2"]', '{"product1": {"quantity": 2, "price": 10}, "product2": {"quantity": 1, "price": 5}}', 5, 1000, 'Great service!', '555-555-1234', 'john.smith@email.com'),
('jane456', 'password456', 'Jane Doe', '456 Elm St, Anytown USA', 50, '{"coupon3": {"expiry": "2023-12-31", "discount": 15}}', '["product3"]', '{"product3": {"quantity": 3, "price": 7}}', 2, 500, 'Good product!', '555-555-5678', 'jane.doe@email.com'),
('bob789', 'password789', 'Bob Johnson', '789 Oak St, Anytown USA', 200, '{"coupon4": {"expiry": "2023-09-30", "discount": 25}}', '["product4", "product5"]', '{"product4": {"quantity": 1, "price": 15}, "product5": {"quantity": 2, "price": 8}}', 10, 1500, 'Fast shipping!', '555-555-9012', 'bob.johnson@email.com');