-- Cách 1: tạo database trực tiếp từ tablePluse
-- cách 2: tạo từ code SQL
-- CREATE DATABASE node48 - test
-- CREATE DATABASE
-- **chỉ tạo database 1 lần
-- để dùng database mới tạo
-- USE node_48

-- tạo table
-- 3loại dữ liệu chính:
-- 1.kiểu string: varchar, text,...
-- 2.kiểm number: int, bool, 
-- 3.kiểu date, datime
-- cú pháp: create table_tên table(
-- 	các thuộc tính
-- <tên COLUMN> <kiểu dữ liệu lưu trữ> <CONSTRAINT>
-- 	vd: create 
-- product_name varchar(100) not null,
-- image varchar(255),
-- price double,
-- rate int

	-- ) 
-- 	tạo data
	USER node_48
	
	create table product (
	product_name VARCHAR(100) NOT NULL,
	image VARCHAR(155),
	price DOUBLE,
	rate INT
	)
	
	-- Tạo bảng product
CREATE TABLE product (
    product_name VARCHAR(100) NOT NULL,
    image VARCHAR(155),
    price DOUBLE,
    rate INT
);

-- Thêm 20 dữ liệu vào bảng product
-- Tạo bảng product
CREATE TABLE product (
    product_name VARCHAR(100) NOT NULL,
    image VARCHAR(155),
    price DOUBLE,
    rate INT
);

-- Thêm 20 dữ liệu vào bảng product với link sản phẩm thật
INSERT INTO product (product_name, image, price, rate) VALUES
('iPhone 14 Pro', 'https://store.storeimages.cdn-apple.com/4668/as-images.apple.com/is/iphone-14-pro-max-silver', 999.99, 5),
('Samsung Galaxy S23 Ultra', 'https://images.samsung.com/is/image/samsung/assets/smartphones/galaxy-s23', 1199.99, 5),
('Sony WH-1000XM5 Headphones', 'https://cdn.sony.com/media/headphones.jpg', 399.99, 4),
('Dell XPS 15', 'https://i.dell.com/dell-xps-15.jpg', 1499.99, 5),
('ASUS ROG Strix G15', 'https://www.asus.com/laptops/rog-strix-g15.jpg', 1299.99, 4),
('Apple AirPods Pro (2nd Gen)', 'https://store.storeimages.cdn-apple.com/4668/airpods-pro.jpg', 249.99, 5),
('Logitech MX Master 3', 'https://logitech.com/mx-master-3.jpg', 99.99, 4),
('Sony Alpha A7 III Camera', 'https://cdn.sony.com/alpha-a7-iii.jpg', 1999.99, 5),
('DJI Mini 3 Pro Drone', 'https://www.dji.com/media/dji-mini-3-pro.jpg', 759.99, 5),
('Samsung 4K Smart TV 55"', 'https://images.samsung.com/tv/smart-55.jpg', 699.99, 5),
('Philips Hue Smart Light Bulb', 'https://www.philips-hue.com/assets/smart-bulb.jpg', 49.99, 4),
('Fitbit Versa 4 Smartwatch', 'https://fitbit.com/versa4.jpg', 229.99, 4),
('Nespresso Coffee Maker', 'https://nespresso.com/media/coffee-maker.jpg', 199.99, 5),
('Dyson V15 Vacuum Cleaner', 'https://www.dyson.com/images/v15-vacuum-cleaner.jpg', 749.99, 5),
('Google Nest Mini', 'https://store.google.com/nest-mini.jpg', 49.99, 4),
('Bose Portable Speaker', 'https://bose.com/media/portable-speaker.jpg', 349.99, 5),
('Razer DeathAdder V2 Mouse', 'https://assets.razer.com/deathadder-v2.jpg', 69.99, 4),
('Canon PIXMA G6020 Printer', 'https://cdn.canon.com/media/pixma-g6020.jpg', 249.99, 4),
('Anker PowerCore 10000', 'https://anker.com/media/powercore-10000.jpg', 29.99, 5),
('Instant Pot Duo 7-in-1', 'https://instantpot.com/media/duo-7-in-1.jpg', 89.99, 5);


-- 	dùng code sql để query data select * form 
SELECT * FROM product
SELECT product_name, image FROM product

-- AS đổi tên colum moi lan lay du lieu
-- **luu y ten colum trong table van giu nguyen
SELECT product_name AS 'ten san pham' FROM product

CREATE TABLE user(
	fullname VARCHAR(255) NOT NULL,
	email VARCHAR(255) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	address VARCHAR(255),
	age INT
	
)
CREATE TABLE user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fullname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20) NOT NULL UNIQUE,
    address VARCHAR(255),
    age INT CHECK (age >= 0)
);

INSERT INTO user (fullname, email, phone, address, age) VALUES
('John Doe', 'john.doe@example.com', '555-123-4567', '123 Main St', 30),
('Jane Smith', 'jane.smith@example.com', '555-987-6543', '456 Oak Ave', 25),
('David Lee', 'david.lee@example.com', '555-555-1212', '789 Pine Ln', 40),
('Sarah Jones', 'sarah.jones@example.com', '555-111-2222', '101 Elm St', 28),
('Michael Brown', 'michael.brown@example.com', '555-333-4444', '222 Maple Dr', 35),
('Emily Davis', 'emily.davis@example.com', '555-777-8888', '333 Birch Rd', 22),
('Kevin Wilson', 'kevin.wilson@example.com', '555-444-5555', '444 Cedar Ct', 45),
('Ashley Garcia', 'ashley.garcia@example.com', '555-666-7777', '555 Redwood Pl', 29),
('Brian Rodriguez', 'brian.rodriguez@example.com', '555-888-9999', '666 Willow Way', 32),
('Jessica Martinez', 'jessica.martinez@example.com', '555-222-3333', '777 Oakwood Blvd', 38),
('Christopher Anderson', 'christopher.anderson@example.com', '555-000-1111', '888 Sycamore Cir', 27),
('Amanda Taylor', 'amanda.taylor@example.com', '555-101-2020', '999 Dogwood Ln', 31),
('Matthew Thomas', 'matthew.thomas@example.com', '555-303-4040', '1000 Aspen Rd', 36),
('Elizabeth Hernandez', 'elizabeth.hernandez@example.com', '555-505-6060', '1111 Cherry Ct', 24),
('Daniel Moore', 'daniel.moore@example.com', '555-707-8080', '1212 Pine Pl', 42),
('Melissa Jackson', 'melissa.jackson@example.com', '555-909-0000', '1313 Birch Way', 33),
('Ryan Martin', 'ryan.martin@example.com', '555-212-3131', '1414 Cedar Blvd', 39),
('Stephanie White', 'stephanie.white@example.com', '555-414-5151', '1515 Redwood Cir', 26),
('Joshua Harris', 'joshua.harris@example.com', '555-616-7171', '1616 Willow Ln', 34),
('Nicole Thompson', 'nicole.thompson@example.com', '555-818-9191', '1717 Oakwood Rd', 23);
('Emily Johnson', 'nicole.thompson@example.com', '555-818-9191', '1717 Oakwood Rd', 23);


SELECT * FROM user
SELECT email, phone, address FROM user

-- query(filter data)/

-- 1/liet ke user co tuoi tu 25-30
-- c1
SELECT * FROM user
WHERE age BETWEEN 25 AND 30

-- c2
SELECT * FROM user
-- WHERE age > 25 AND age < 30
WHERE 20 < age AND age < 30

-- sap xep tang dan hoac giam dan 
SELECT * FROM user
WHERE 20 < age AND age < 30
ORDER BY age ASC

-- giam dan
SELECT * FROM user
WHERE 20 < age AND age < 30
ORDER BY age DESC

-- 2 tim nhung nguoi ten john
SELECT * FROM user
-- LIKE: tuong doi
WHERE fullname LIKE '%john%'

-- %: bo qua nhung ky tu
-- %John:tim nhung nguoi co chu john o cuoi
-- vd: emiy johnson

-- John%: tim nhung nguoi co john o dau

-- %john% tim nhung nguoi co chu john

-- 3 tim nhung nguoi co tuoi lon nhat

-- b1 tim tuoi lon nhat trong danh sach
-- b2 query nhung nguoi bang voi tuoi lon nhat 
-- C1 query long nhau
SELECT * FROM user
WHERE age = (
	SELECT age FROM user
	ORDER  BY age DESC
	LIMIT 1
)

-- c2 max + query long
SELECT * FROM user
WHERE age = (
	SELECT MAX(age) FROM user
	
)

-- 4 dem so luong user co trong danh sach

SELECT COUNT(*) AS "Tong so user" FROM user




-- =============================UPDATE AND DELETE===================================

-- PHAI CÓ WHERE de update hay delete data cụ thể

UPDATE user SET age = 30
WHERE fullname = 'Nicole Thompson'
SELECT * FROM user


-- update lisr user

UPDATE user SET  age = 40
WHERE fullname IN ('Ashley Garcia', 'Christopher Anderson')
SELECT * FROM user


-- DELETE

DELETE FROM user
WHERE fullname = 'David Lee'
SELECT * FROM user

-- hard delete : xóa hẵn


-- soft delete : xóa, hay ẩn ngoài UI vẫn còn trong table (show hoac hiden data)
is_delete; delete_at


-- ==============update table==================

-- case1: thêm colum
alter table user 
ADD COLUMN gender INT DEFAULT 1

SELECT * FROM user
-- case2 update colum

ALTER TABLE user
MODIFY COLUMN  fullname VARCHAR (100) NOT NULL
SELECT * FROM user

INSERT INTO user ( fullname, email, phone, address, age)
VALUES ( 'Nguyễn Văn A', 'nguyenvana@example.com', '0901234567', '123 Đường ABC', 30);

