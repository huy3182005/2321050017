-- xóa nếu đã có (giúp tránh lỗi khi chạy lại nhiều lần)
DROP DATABASE IF EXISTS quan_ly_phim;
CREATE DATABASE quan_ly_phim CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE quan_ly_phim;

CREATE TABLE phimm(
    id INT  PRIMARY KEY,
    ten_phim VARCHAR(50) NOT NULL,
    nam_ra_mat INT,
    the_loai VARCHAR(50),
    dao_dien_id int,
    thoi_luong DOUBLE,
    the_loai_id int,
    so_tap int
);

CREATE TABLE nguoi_dung(
    id INT PRIMARY KEY,
    gioi_tinh CHAR(1),
    tai_khoan VARCHAR(50),
    ten_nguoi_dung VARCHAR(50),
    mat_khau VARCHAR(50)
);

CREATE TABLE the_loai(
    id INT  PRIMARY KEY,
    ten_the_loai VARCHAR(50)
);
CREATE TABLE quyen (
	ten_quyen varchar(50)
);
CREATE TABLE phim_dien_vien (
    id int,
    phim_id int
);
CREATE TABLE quoc_gia(
	id int,
    ten_quoc_gia varchar(50)
);
