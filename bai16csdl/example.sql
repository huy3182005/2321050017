CREATE DATABASE IF NOT EXISTS quan_ly_web_phim;
USE quan_ly_web_phim;

-- 1. Thể loại
CREATE TABLE IF NOT EXISTS the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_the_loai VARCHAR(50)
);

-- 2. Vai trò
CREATE TABLE IF NOT EXISTS vai_tro (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_vai_tro VARCHAR(20)
);

-- 3. Người dùng
CREATE TABLE IF NOT EXISTS nguoi_dung (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_dang_nhap VARCHAR(50),
    mat_khau VARCHAR(50),
    ho_ten VARCHAR(50),
    email VARCHAR(50),
    sdt VARCHAR(10),
    vai_tro_id INT,
    ngay_sinh DATETIME,
    FOREIGN KEY (vai_tro_id) REFERENCES vai_tro(id)
);

-- 4. Quốc gia
CREATE TABLE IF NOT EXISTS quoc_gia (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_quoc_gia VARCHAR(50)
);

-- 5. Phim
CREATE TABLE IF NOT EXISTS phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_phim VARCHAR(255),
    dao_dien_id INT,
    nam_phat_hanh INT,
    poster VARCHAR(255),
    quoc_gia_id INT,
    so_tap INT,
    trailer VARCHAR(255),
    mo_ta TEXT,
    FOREIGN KEY (quoc_gia_id) REFERENCES quoc_gia(id)
);

-- 6. Diễn viên
CREATE TABLE IF NOT EXISTS dien_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    ten_dien_vien VARCHAR(100)
);

-- 7. phim_dien_vien
CREATE TABLE IF NOT EXISTS phim_dien_vien (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    dien_vien_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (dien_vien_id) REFERENCES dien_vien(id)
);

-- 8. phim_the_loai
CREATE TABLE IF NOT EXISTS phim_the_loai (
    id INT PRIMARY KEY AUTO_INCREMENT,
    phim_id INT,
    the_loai_id INT,
    FOREIGN KEY (phim_id) REFERENCES phim(id),
    FOREIGN KEY (the_loai_id) REFERENCES the_loai(id)
);

-- 9. Tập phim
CREATE TABLE IF NOT EXISTS tap_phim (
    id INT PRIMARY KEY AUTO_INCREMENT,
    so_tap INT,
    tieu_de VARCHAR(255),
    phim_id INT,
    thoi_luong FLOAT,
    trailer VARCHAR(255),
    FOREIGN KEY (phim_id) REFERENCES phim(id)
);

INSERT INTO the_loai (ten_the_loai) VALUES
('Hành động'),
('Tình cảm'),
('Kinh dị'),
('Hài hước'),
('Viễn tưởng'),
('Phiêu lưu'),
('Hoạt hình'),
('Tâm lý'),
('Học đường'),
('Âm nhạc'),
('Thể thao'),
('Cổ trang'),
('Khoa học'),
('Tài liệu'),
('Trinh thám'),
('Chiến tranh'),
('Gia đình'),
('Bí ẩn'),
('Pháp luật'),
('Hình sự'),
('Tâm linh'),
('Zombie'),
('Kiếm hiệp'),
('Game'),
('Sinh tồn'),
('Thiếu nhi'),
('Chính kịch'),
('Thần thoại'),
('Hồi ký'),
('Chuyển sinh');

INSERT INTO vai_tro (ten_vai_tro) VALUES
('admin'),('user'),('mod'),('guest'),('owner'),
('vip'),('premium'),('editor'),('upload'),('viewer'),
('member'),('staff'),('seller'),('buyer'),('manager'),
('support'),('censor'),('reviewer'),('writer'),('artist'),
('actor'),('director'),('donor'),('tester'),('developer'),
('partner'),('beta'),('sponsor'),('trial'),('superadmin');

INSERT INTO quoc_gia (ten_quoc_gia) VALUES
('Việt Nam'),('Hàn Quốc'),('Nhật Bản'),('Trung Quốc'),('Mỹ'),
('Anh'),('Pháp'),('Đức'),('Nga'),('Ấn Độ'),
('Canada'),('Úc'),('Tây Ban Nha'),('Brazil'),('Ý'),
('Mexico'),('Thái Lan'),('Philippines'),('Indonesia'),('Malaysia'),
('Singapore'),('Thổ Nhĩ Kỳ'),('Ả Rập'),('UAE'),('Ai Cập'),
('Argentina'),('Chile'),('Bỉ'),('Thụy Điển'),('Hà Lan');

INSERT INTO nguoi_dung (ten_dang_nhap, mat_khau, ho_ten, email, sdt, vai_tro_id, ngay_sinh)
VALUES
('user1','123','User 1','u1@gmail.com','0900000001',2,'2000-01-01'),
('user2','123','User 2','u2@gmail.com','0900000002',2,'2000-01-02'),
('user3','123','User 3','u3@gmail.com','0900000003',2,'2000-01-03'),
('user4','123','User 4','u4@gmail.com','0900000004',2,'2000-01-04'),
('user5','123','User 5','u5@gmail.com','0900000005',2,'2000-01-05'),
('user6','123','User 6','u6@gmail.com','0900000006',2,'2000-01-06'),
('user7','123','User 7','u7@gmail.com','0900000007',2,'2000-01-07'),
('user8','123','User 8','u8@gmail.com','0900000008',2,'2000-01-08'),
('user9','123','User 9','u9@gmail.com','0900000009',2,'2000-01-09'),
('user10','123','User 10','u10@gmail.com','0900000010',2,'2000-01-10'),
('user11','123','User 11','u11@gmail.com','0900000011',2,'2000-01-11'),
('user12','123','User 12','u12@gmail.com','0900000012',2,'2000-01-12'),
('user13','123','User 13','u13@gmail.com','0900000013',2,'2000-01-13'),
('user14','123','User 14','u14@gmail.com','0900000014',2,'2000-01-14'),
('user15','123','User 15','u15@gmail.com','0900000015',2,'2000-01-15'),
('user16','123','User 16','u16@gmail.com','0900000016',2,'2000-01-16'),
('user17','123','User 17','u17@gmail.com','0900000017',2,'2000-01-17'),
('user18','123','User 18','u18@gmail.com','0900000018',2,'2000-01-18'),
('user19','123','User 19','u19@gmail.com','0900000019',2,'2000-01-19'),
('user20','123','User 20','u20@gmail.com','0900000020',2,'2000-01-20'),
('user21','123','User 21','u21@gmail.com','0900000021',2,'2000-01-21'),
('user22','123','User 22','u22@gmail.com','0900000022',2,'2000-01-22'),
('user23','123','User 23','u23@gmail.com','0900000023',2,'2000-01-23'),
('user24','123','User 24','u24@gmail.com','0900000024',2,'2000-01-24'),
('user25','123','User 25','u25@gmail.com','0900000025',2,'2000-01-25'),
('user26','123','User 26','u26@gmail.com','0900000026',2,'2000-01-26'),
('user27','123','User 27','u27@gmail.com','0900000027',2,'2000-01-27'),
('user28','123','User 28','u28@gmail.com','0900000028',2,'2000-01-28'),
('user29','123','User 29','u29@gmail.com','0900000029',2,'2000-01-29'),
('user30','123','User 30','u30@gmail.com','0900000030',2,'2000-01-30');

INSERT INTO dien_vien (ten_dien_vien) VALUES
('Diễn viên 1'),('Diễn viên 2'),('Diễn viên 3'),('Diễn viên 4'),('Diễn viên 5'),
('Diễn viên 6'),('Diễn viên 7'),('Diễn viên 8'),('Diễn viên 9'),('Diễn viên 10'),
('Diễn viên 11'),('Diễn viên 12'),('Diễn viên 13'),('Diễn viên 14'),('Diễn viên 15'),
('Diễn viên 16'),('Diễn viên 17'),('Diễn viên 18'),('Diễn viên 19'),('Diễn viên 20'),
('Diễn viên 21'),('Diễn viên 22'),('Diễn viên 23'),('Diễn viên 24'),('Diễn viên 25'),
('Diễn viên 26'),('Diễn viên 27'),('Diễn viên 28'),('Diễn viên 29'),('Diễn viên 30');

INSERT INTO phim (ten_phim, dao_dien_id, nam_phat_hanh, poster, quoc_gia_id, so_tap, trailer, mo_ta)
VALUES
('Phim 1',1,2021,'p1.jpg',1,12,'trailer1','Mô tả phim 1'),
('Phim 2',2,2022,'p2.jpg',2,10,'trailer2','Mô tả phim 2'),
('Phim 3',1,2023,'p3.jpg',3,20,'trailer3','Mô tả phim 3'),
('Phim 4',2,2021,'p4.jpg',4,24,'trailer4','Mô tả phim 4'),
('Phim 5',1,2022,'p5.jpg',5,16,'trailer5','Mô tả phim 5'),
('Phim 6',2,2021,'p6.jpg',6,12,'trailer6','Mô tả phim 6'),
('Phim 7',1,2022,'p7.jpg',7,18,'trailer7','Mô tả phim 7'),
('Phim 8',2,2023,'p8.jpg',8,8,'trailer8','Mô tả phim 8'),
('Phim 9',1,2023,'p9.jpg',9,35,'trailer9','Mô tả phim 9'),
('Phim 10',1,2021,'p10.jpg',10,25,'trailer10','Mô tả phim 10'),
('Phim 11',2,2024,'p11.jpg',11,10,'trailer11','Mô tả phim 11'),
('Phim 12',1,2022,'p12.jpg',12,12,'trailer12','Mô tả phim 12'),
('Phim 13',2,2023,'p13.jpg',13,15,'trailer13','Mô tả phim 13'),
('Phim 14',1,2021,'p14.jpg',14,20,'trailer14','Mô tả phim 14'),
('Phim 15',1,2022,'p15.jpg',15,12,'trailer15','Mô tả phim 15'),
('Phim 16',2,2021,'p16.jpg',16,10,'trailer16','Mô tả phim 16'),
('Phim 17',1,2022,'p17.jpg',17,12,'trailer17','Mô tả phim 17'),
('Phim 18',2,2023,'p18.jpg',18,5,'trailer18','Mô tả phim 18'),
('Phim 19',1,2024,'p19.jpg',19,30,'trailer19','Mô tả phim 19'),
('Phim 20',2,2022,'p20.jpg',20,40,'trailer20','Mô tả phim 20'),
('Phim 21',1,2021,'p21.jpg',21,12,'trailer21','Mô tả phim 21'),
('Phim 22',2,2023,'p22.jpg',22,16,'trailer22','Mô tả phim 22'),
('Phim 23',1,2022,'p23.jpg',23,22,'trailer23','Mô tả phim 23'),
('Phim 24',2,2024,'p24.jpg',24,9,'trailer24','Mô tả phim 24'),
('Phim 25',1,2023,'p25.jpg',25,14,'trailer25','Mô tả phim 25'),
('Phim 26',2,2022,'p26.jpg',26,12,'trailer26','Mô tả phim 26'),
('Phim 27',1,2024,'p27.jpg',27,20,'trailer27','Mô tả phim 27'),
('Phim 28',2,2021,'p28.jpg',28,13,'trailer28','Mô tả phim 28'),
('Phim 29',1,2022,'p29.jpg',29,18,'trailer29','Mô tả phim 29'),
('Phim 30',2,2023,'p30.jpg',30,16,'trailer30','Mô tả phim 30');

INSERT INTO phim_dien_vien (phim_id, dien_vien_id) VALUES
(1,1),(1,2),(2,3),(2,4),(3,5),
(3,6),(4,7),(4,8),(5,9),(5,10),
(6,11),(6,12),(7,13),(7,14),(8,15),
(8,16),(9,17),(9,18),(10,19),(10,20),
(11,21),(11,22),(12,23),(12,24),(13,25),
(14,26),(15,27),(16,28),(17,29),(18,30);

INSERT INTO phim_the_loai (phim_id, the_loai_id) VALUES
(1,1),(2,2),(3,3),(4,4),(5,5),
(6,6),(7,7),(8,8),(9,9),(10,10),
(11,11),(12,12),(13,13),(14,14),(15,15),
(16,16),(17,17),(18,18),(19,19),(20,20),
(21,21),(22,22),(23,23),(24,24),(25,25),
(26,26),(27,27),(28,28),(29,29),(30,30);

INSERT INTO tap_phim (so_tap, tieu_de, phim_id, thoi_luong, trailer)
VALUES
(1,'Tập 1',1,45,'tr1'),
(2,'Tập 2',1,46,'tr2'),
(3,'Tập 3',1,44,'tr3'),
(4,'Tập 4',2,43,'tr4'),
(5,'Tập 5',2,41,'tr5'),
(6,'Tập 6',2,40,'tr6'),
(7,'Tập 7',3,45,'tr7'),
(8,'Tập 8',3,46,'tr8'),
(9,'Tập 9',3,47,'tr9'),
(10,'Tập 10',4,48,'tr10'),
(11,'Tập 11',4,49,'tr11'),
(12,'Tập 12',4,43,'tr12'),
(13,'Tập 13',5,44,'tr13'),
(14,'Tập 14',5,45,'tr14'),
(15,'Tập 15',5,46,'tr15'),
(16,'Tập 16',6,47,'tr16'),
(17,'Tập 17',6,48,'tr17'),
(18,'Tập 18',6,49,'tr18'),
(19,'Tập 19',7,40,'tr19'),
(20,'Tập 20',7,41,'tr20'),
(21,'Tập 21',8,43,'tr21'),
(22,'Tập 22',8,44,'tr22'),
(23,'Tập 23',9,45,'tr23'),
(24,'Tập 24',9,46,'tr24'),
(25,'Tập 25',10,47,'tr25'),
(26,'Tập 26',10,48,'tr26'),
(27,'Tập 27',11,49,'tr27'),
(28,'Tập 28',11,50,'tr28'),
(29,'Tập 29',12,40,'tr29'),
(30,'Tập 30',12,41,'tr30');


