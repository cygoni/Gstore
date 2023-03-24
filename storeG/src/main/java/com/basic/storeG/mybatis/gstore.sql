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

INSERT INTO items (qty, img, pName, price, category, rating, img_hover, data, register_date) VALUES 
(10, 'loa01.jpg', '로스트아크 모코코 랜덤 피규어 Ver.1', 5500, 1, 0, '["loa01_01.jpg", "loa01_02.jpg"]', '["loa01_a01.jpg", "loa01_a02.jpg", "loa01_a03.jpg", "loa01_a04.jpg"]', NOW()),
(10, 'loa02.jpg', '로스트아크 모코코 미니 피규어세트', 27000, 1, 0, '[]', '["loa02_01.jpg","loa02_02.jpg","loa02_03.jpg","loa02_04.jpg"]', NOW()),
(10, 'loa03.jpg', '로스트아크 굿나잇 모코코 무드등', 45000, 1, 0, '["loa03_hover"]', '["loa03_01.jpg","loa03_02.jpg"]', NOW()),
(10, 'loa04.jpg', '로스트아크 NPC 피규어 샤샤', 49000, 1, 0, '[]', '["loa04_01.jpg","loa04_02.jpg"]', NOW()),
(10, 'loa05.jpg', '로스트아크 NPC 피규어 니아', 49000, 1, 0, '[]', '["loa05_01.jpg","loa05_02.jpg"]', NOW()),
(10, 'loa06.jpg', '로스트아크 NPC 피규어 니나브', 49000, 1, 0, '[]', '["loa06_01.jpg","loa06_02.jpg"]', NOW()),
(10, 'loa07.jpg', '로스트아크 NPC 피규어 마리', 49000, 1, 0, '[]', '["loa07_01.jpg","loa07_02.jpg"]', NOW()),
(10, 'loa08.jpg', '로스트아크 기분 좋은 모코코 인형', 30000, 1, 0, '["loa08_hover"]', '["loa08_01.jpg","loa08_02.jpg"]', NOW()),
(10, 'loa09.jpg', '로스트아크 늘푸른 모코코 인형', 30000, 1, 0, '["loa09_hover"]', '["loa09_01.jpg","loa09_02.jpg"]', NOW()),
(10, 'loa10.jpg', '로스트아크 벚꽃 모코코 인형', 30000, 1, 0, '["loa10_hover"]', '["loa10_01.jpg","loa10_02.jpg"]', NOW());

