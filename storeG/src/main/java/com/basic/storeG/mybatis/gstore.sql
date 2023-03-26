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
  id VARCHAR(50) unique key,
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
  item varchar(50),
  address VARCHAR(255),
  name VARCHAR(50),
  phone_number VARCHAR(20),
  sales_price INT,
  discount_price INT,
  total_price INT,
  orders_qty int,
  items JSON,

  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  delivery_status int,
  cart_no int
);

create table cart(
	cart_no int auto_increment primary key,
    itmes json,
    id varchar(50),
    purchased boolean
);

INSERT INTO cart (items, id, purchased) VALUES 
('[{"item_no": 1, "qty": 2}, {"item_no": 2, "qty": 3}]', 'john123', 0),
('[{"item_no": 3, "qty": 1}, {"item_no": 4, "qty": 2}]', 'bob789', 1),
('[{"item_no": 2, "qty": 1}, {"item_no": 5, "qty": 1}]', 'bob789', 0),
('[{"item_no": 1, "qty": 3}, {"item_no": 6, "qty": 2}]', 'jane456', 0),
('[{"item_no": 7, "qty": 2}, {"item_no": 8, "qty": 1}]', 'jane456', 1);

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

INSERT INTO items (qty, img, pName, price, category, rating, img_hover, data, register_date) VALUES 
(10,'poket01.jpg','포켓몬스터 고라파덕 피규어',10000,4,0,null,null,now()),
(10,'poket02.jpg','포케손스터 리자몽 피규어',15000,4,0,null,null,now()),
(10,'poket03.jpg','포켓몬스터 뮤 피규어',20000,4,0,null,null,now()),
(10,'poket04.jpg','포켓몬스터 뮤츠 피규어',30000,4,0,null,null,now()),
(10,'poket05.png','포켓몬스터 잠만보 피규어',25000,4,0,null,null,now()),
(10,'poket06.jpg','포켓몬스터 탕구리 피규어',20000,4,0,null,null,now()),
(10,'poket07.jpg','포켓몬스터 파이리 피규어',15000,4,0,null,null,now()),
(10,'poket08.jpg','포켓몬스터 푸린 피규어',15000,4,0,null,null,now()),
(10,'poket09.jpg','포켓몬스터 피카츄 피규어',15000,4,0,null,null,now()),
(10,'poket10.jpg','포켓몬스터 이브이 피규어',15000,4,0,null,null,now()),
(10,'poket11.jpg','포켓몬스터 닥트리오 피규어',15000,4,0,'["poketmon11_hover.jpg"]','["poketmon11_01.jpg"]',now());

INSERT INTO items (qty, img, pName, price, category, rating, img_hover, data, register_date) VALUES 
(10,'t01.jpg','진격의 거인 리바이 피규어',15000,5,0,'["t01_01.jpg","t01_02.jpg","t01_03.jpg","t01_04.jpg"]','["t01_01.jpg","t01_02.jpg","t01_03.jpg","t01_04.jpg"]',now()),
(10,'t02.jpg','진격의 거인 엘렌예거 피규어',18000,5,0,'["t02_01.jpg","t02_02.jpg","t02_03.jpg","t02_04.jpg","t02_05.jpg"]','["t02_01.jpg","t02_02.jpg","t02_03.jpg","t02_04.jpg","t02_05.jpg"]',now()),
(10,'t03.jpg','진격의 거인 엘렌예거 거인화 피규어',30000,5,0,'["t03_01.jpg","t03_02.jpg","t03_03.jpg"]','["t03_01.jpg","t03_02.jpg","t03_03.jpg","t03_04.jpg","t03_05.jpg","t03_06.jpg","t03_07.jpg"]',now()),
(10,'t04.jpg','진격의 거인 미카사 피규어',18000,5,0,'["t04_01.jpg","t04_02.jpg","t04_03.jpg","t04_04.jpg"]','["t04_01.jpg","t04_02.jpg","t04_03.jpg","t04_04.jpg","t04_05.jpg","t04_06.jpg","t04_07.jpg"]',now()),
(10,'t05.jpg','진격의 거인 엘런스미스 피규어',15000,5,0,'["t05_01.jpg","t05_02.jpg","t05_03.jpg","t05_04.jpg"]','["t05_01.jpg","t05_02.jpg","t05_03.jpg","t05_04.jpg","t05_05.jpg","t05_06.jpg","t05_07.jpg","t05_08.jpg","t05_09.jpg"]',now()),
(10,'t06.jpg','진격의 거인 엘런스미스 캐릭터화 피규어',10000,5,0,'["t06_01.jpg","t06_02.jpg","t06_03.jpg","t06_04.jpg"]','["t06_01.jpg","t06_02.jpg","t06_03.jpg","t06_04.jpg","t06_06.jpg"]',now()),
(10,'t07.jpg','진격의 거인 한지조에 캐릭터화 피규어',10000,5,0,'["t07_01.jpg","t07_02.jpg","t07_03.jpg","t07_04.jpg"]','["t07_01.jpg","t07_02.jpg","t07_03.jpg","t07_04.jpg"]',now()),
(10,'t08.jpg','진격의 거인 미카사 캐릭터화 피규어',10000,5,0,'["t08_01.jpg","t08_02.jpg","t08_03.jpg","t08_04.jpg"]','["t08_01.jpg","t08_02.jpg","t08_03.jpg","t08_04.jpg"]',now());

INSERT INTO items (qty, img, pName, price, category, rating, img_hover, data, register_date) VALUES 
(10,'one01.jpg','원피스 나미 피규어',15000,6,0,'["one01_01.jpg","one01_02.jpg","one01_03.jpg","one01_04.jpg","one01_05.jpg"]','["one01_01.jpg","one01_02.jpg","one01_03.jpg","one01_04.jpg","one01_05.jpg"]',now()),
(10,'one02.jpg','원피스 루피 피규어',20000,6,0,'["one02_01.jpg","one02_02.jpg","one02_03.jpg"]','["one02_01.jpg","one02_02.jpg","one02_03.jpg"]',now()),
(10,'one03.jpg','원피스 니코로빈 피규어',20000,6,0,'["one03_01.jpg","one03_02.jpg"]','["one03_01.jpg","one03_02.jpg"]',now()),
(10,'one04.jpg','원피스 조로 피규어',25000,6,0,'["one04_01.jpg","one04_02.jpg","one04_03.jpg"]','["one04_01.jpg","one04_02.jpg","one04_03.jpg"]',now()),
(10,'one05.jpg','원피스 상디 피규어',20000,6,0,'["one05_01.jpg","one05_02.jpg","one05_03.jpg","one05_04.jpg"]','["one05_01.jpg","one05_02.jpg","one05_03.jpg","one05_04.jpg"]',now()),
(10,'one06.jpg','원피스 프랑키 피규어',20000,6,0,'["one06_01.jpg","one06_02.jpg","one06_03.jpg","one06_04.jpg"]','["one06_01.jpg","one06_02.jpg","one06_03.jpg","one06_04.jpg"]',now()),
(10,'one07.jpg','원피스 브룩 피규어',20000,6,0,'["one07_01.jpg","one07_02.jpg","one07_03.jpg","one07_04.jpg","one07_05.jpg"]','["one07_01.jpg","one07_02.jpg","one07_03.jpg","one07_04.jpg","one07_05.jpg"]',now()),
(10,'one08.jpg','원피스 우솝 피규어',15000,6,0,'["one08_01.jpg","one08_02.jpg","one08_03.jpg","one08_04.jpg"]','["one08_01.jpg","one08_02.jpg","one08_03.jpg","one08_04.jpg"]',now()),
(10,'one09.jpg','원피스 쵸파 피규어',20000,6,0,'["one09_01.jpg","one09_02.jpg","one09_03.jpg"]','["one09_01.jpg","one09_02.jpg","one09_03.jpg"]',now()),
(10,'one10.jpg','원피스 에이스 피규어',50000,6,0,'["one10_01.jpg","one10_02.jpg","one10_03.jpg","one10_04.jpg"]','["one10_01.jpg","one10_02.jpg","one10_03.jpg","one10_04.jpg","one10_05.jpg","one10_06.jpg","one10_07.jpg"]',now());

(10, 'ow01.jpg', '넨도로이드 847 "오버워치" D.Va(디바) 클래식스킨 에디션', 52000, 2, 0, '["ow01_01.jpg", "ow01_02.jpg", "ow01_03.jpg", "ow01_04.jpg", "ow01_05.jpg", "ow01_06.jpg", "ow01_07.jpg"]', '["ow01_01.jpg", "ow01_02.jpg", "ow01_03.jpg", "ow01_04.jpg", "ow01_05.jpg", "ow01_06.jpg", "ow01_07.jpg"]', NOW()),
(10, 'ow02.jpg', 'figma 피그마 오버워치 위도우 메이커', 93000, 2, 0, '["ow02_01.jpg", "ow02_02.jpg", "ow02_03.jpg", "ow02_04.jpg", "ow02_05.jpg", "ow02_06.jpg"]', '["ow00.jpg", "ow02_01.jpg", "ow02_02.jpg", "ow02_03.jpg", "ow02_04.jpg", "ow02_05.jpg", "ow02_06.jpg"]', NOW()),
(10, 'ow03.jpg', '오버워치 한조 스테츄', 299000, 2, 0, '["ow03_01.jpg", "ow03_02.jpg", "ow03_03.jpg", "ow03_04.jpg", "ow03_05.jpg", "ow03_06.jpg"]', '["ow00.jpg", "ow03_01.jpg", "ow03_02.jpg", "ow03_03.jpg", "ow03_04.jpg", "ow03_05.jpg", "ow03_06.jpg"]', NOW()),
(10, 'ow04.jpg', 'figma (피그마) 오버워치 메르시', 96000, 2, 0, '["ow04_01.jpg", "ow04_02.jpg", "ow04_03.jpg", "ow04_04.jpg", "ow04_05.jpg", "ow04_06.jpg", "ow04_07.jpg"]', '["ow00.jpg", "ow04_01.jpg", "ow04_02.jpg", "ow04_03.jpg", "ow04_04.jpg", "ow04_05.jpg", "ow04_06.jpg", "ow04_07.jpg"]', NOW()),
(10, 'ow05.jpg', '넨도로이드 오버워치 토르비욘', 64000, 2, 0, '["ow05_01.jpg", "ow05_02.jpg", "ow05_03.jpg", "ow05_04.jpg", "ow05_05.jpg", "ow05_06.jpg"]', '["ow00.jpg", "ow05_01.jpg", "ow05_02.jpg", "ow05_03.jpg", "ow05_04.jpg", "ow05_05.jpg", "ow05_06.jpg"]', NOW()),
(10, 'ow06.jpg', 'figma (피그마) 오버워치 트레이서', 72000, 2, 0, '["ow06_01.jpg", "ow06_02.jpg", "ow06_03.jpg", "ow06_04.jpg", "ow06_05.jpg"]', '["ow00.jpg", "ow06_01.jpg", "ow06_02.jpg", "ow06_03.jpg", "ow06_04.jpg", "ow06_05.jpg"]', NOW()),
(10, 'ow07.jpg', 'figma (피그마) 오버워치 겐지 (OVERWATCH)', 92000, 2, 0, '["ow07_01.jpg", "ow07_02.jpg", "ow07_03.jpg", "ow07_04.jpg", "ow07_05.jpg", "ow07_06.jpg", "ow07_07.jpg"]', '["ow00.jpg", "ow07_01.jpg", "ow07_02.jpg", "ow07_03.jpg", "ow07_04.jpg", "ow07_05.jpg", "ow07_06.jpg", "ow07_07.jpg"]', NOW()),
(10, 'ow08.jpg', ' figma (피그마) 오버워치 맥크리', 91000, 2, 0, '["ow08_01.jpg", "ow08_02.jpg", "ow08_03.jpg", "ow08_04.jpg", "ow08_05.jpg"]', '["ow00.jpg", "ow08_01.jpg", "ow08_02.jpg", "ow08_03.jpg", "ow08_04.jpg", "ow08_05.jpg"]', NOW());


INSERT INTO items (qty, img, pName, price, category, rating, img_hover, data, register_date) VALUES 
(10, 'sf01.jpg', '초콜릿 토끼- 아기 & 침대', 13000, 3, 0, '["sf01_01.jpg"]', '["sf00.jpg", "sf01_01.jpg"]', NOW()),
(10, 'sf02.jpg', '토끼 간호사와 휠체어 (토끼 인형 1종 포함)', 15000, 3, 0, '["sf02_01.jpg"]', '["sf00.jpg", "sf02_01.jpg"]', NOW()),
(10, 'sf03.jpg', '크림 고양이 가족', 14000, 3, 0, null, '["sf00.jpg"]', NOW()),
(10, 'sf04.jpg', '초콜릿 토끼의 통나무 이층집', 33000, 3, 0, '["sf04_01.jpg", "sf04_02.jpg", "sf04_03.jpg"]', '["sf00.jpg", "sf04_01.jpg", "sf04_02.jpg", "sf04_03.jpg"]', NOW()),
(10, 'sf05.jpg', '초콜릿 토끼 - 쌍둥이 & 유모차', 11000, 3, 0, null, '["sf00.jpg"]', NOW()),
(10, 'sf06.jpg', '초콜릿 토끼 가족', 14000, 3, 0, null, '["sf00.jpg"]', NOW()),
(10, 'sf07.jpg', '여우 가족', 14000, 3, 0, null, '["sf00.jpg"]', NOW()),
(10, 'sf08.jpg', '양 가족', 15000, 3, 0, null, '["sf00.jpg"]', NOW()),
(10, 'sf09.jpg', '스페셜 키친 세트 (인형 미포함)', 15000, 3, 0, '["sf09_01.jpg"]', '["sf00.jpg", "sf09_01.jpg"]', NOW()),
(10, 'sf10.jpg', '방청소 세트', 11000, 3, 0, '["sf10_01.jpg", "sf10_02.jpg"]', '["sf00.jpg", "sf10_01.jpg", "sf10_02.jpg"]', NOW()),
(10, 'sf11.jpg', '마말레이드 곰 쌍둥이', 5000, 3, 0, null, '["sf00.jpg"]', NOW()),
(10, 'sf12.jpg', '마말레이드 곰 가족', 15000, 3, 0, null, '["sf00.jpg"]', NOW()),
(10, 'sf13.jpg', '다람쥐 가족 세트', 15000, 3, 0, '["sf13_01.jpg"]', '["sf00.jpg", "sf13_01.jpg"]', NOW()),
(10, 'sf14.jpg', '놀이하는 꼬마 아기 2- 요람', 5000, 3, 0, null, '["sf00.jpg"]', NOW()),
(10, 'sf15.jpg', '놀이하는 꼬마 아기 2- 그네', 5000, 3, 0, null, '["sf00.jpg"]', NOW());


