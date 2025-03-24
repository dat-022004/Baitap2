-- Tạo cơ sở dữ liệu với vị trí lưu trữ cụ thể
CREATE DATABASE QLSV
ON PRIMARY 
( NAME = QLSV,
  FILENAME = 'D:\học tập\HQTCSDL\QLSV.mdf',
  SIZE = 64MB, MAXSIZE = UNLIMITED, FILEGROWTH = 64MB )
LOG ON 
( NAME = QLSV_log,
  FILENAME = 'D:\học tập\HQTCSDL\QLSV_log.ldf',
  SIZE = 64MB, MAXSIZE = UNLIMITED, FILEGROWTH = 64MB );

-- Sử dụng cơ sở dữ liệu vừa tạo
USE QLSV;
GO

-- Tạo bảng Khoa
CREATE TABLE Khoa (
    maKhoa CHAR(10) PRIMARY KEY,
    tenKhoa NVARCHAR(100) NOT NULL
);

-- Tạo bảng Bộ Môn
CREATE TABLE BoMon (
    maBM CHAR(10) PRIMARY KEY,
    tenBM NVARCHAR(100) NOT NULL,
    maKhoa CHAR(10),
    FOREIGN KEY (maKhoa) REFERENCES Khoa(maKhoa) ON DELETE CASCADE
);

-- Tạo bảng Giáo Viên
CREATE TABLE GiaoVien (
    magv CHAR(10) PRIMARY KEY,
    hoten NVARCHAR(100) NOT NULL,
    NgaySinh DATE,
    maBM CHAR(10),
    FOREIGN KEY (maBM) REFERENCES BoMon(maBM) ON DELETE SET NULL
);

-- Tạo bảng Sinh Viên
CREATE TABLE SinhVien (
    masv CHAR(10) PRIMARY KEY,
    hoten NVARCHAR(100) NOT NULL,
    NgaySinh DATE
);

-- Tạo bảng Lớp
CREATE TABLE Lop (
    maLop CHAR(10) PRIMARY KEY,
    tenLop NVARCHAR(100) NOT NULL
);

-- Tạo bảng GVCN
CREATE TABLE GVCN (
    maLop CHAR(10),
    hanmagv CHAR(10),
    HK CHAR(10),
    PRIMARY KEY (maLop, hanmagv, HK),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop) ON DELETE CASCADE,
    FOREIGN KEY (hanmagv) REFERENCES GiaoVien(magv) ON DELETE CASCADE
);

-- Tạo bảng LopSV
CREATE TABLE LopSV (
    maLop CHAR(10),
    maSV CHAR(10),
    ChucVu NVARCHAR(50),
    PRIMARY KEY (maLop, maSV),
    FOREIGN KEY (maLop) REFERENCES Lop(maLop) ON DELETE CASCADE,
    FOREIGN KEY (maSV) REFERENCES SinhVien(masv) ON DELETE CASCADE
);

-- Tạo bảng Môn Học
CREATE TABLE MonHoc (
    mamon CHAR(10) PRIMARY KEY,
    Tenmon NVARCHAR(100) NOT NULL,
    STC INT CHECK (STC > 0)
);

-- Tạo bảng Lớp Học Phần
CREATE TABLE LopHP (
    maLopHP CHAR(10) PRIMARY KEY,
    TenLopHP NVARCHAR(100) NOT NULL,
    HK CHAR(10),
    maMon CHAR(10),
    maGV CHAR(10),
    FOREIGN KEY (maMon) REFERENCES MonHoc(mamon) ON DELETE CASCADE,
    FOREIGN KEY (maGV) REFERENCES GiaoVien(magv) ON DELETE SET NULL
);

-- Tạo bảng Đăng Ký Môn Học
CREATE TABLE DKMH (
    maLopHP CHAR(10),
    maSV CHAR(10),
    DiemTP FLOAT CHECK (DiemTP BETWEEN 0 AND 10),
    DiemThi FLOAT CHECK (DiemThi BETWEEN 0 AND 10),
    PhanTramThi FLOAT CHECK (PhanTramThi BETWEEN 0 AND 100),
    PRIMARY KEY (maLopHP, maSV),
    FOREIGN KEY (maLopHP) REFERENCES LopHP(maLopHP) ON DELETE CASCADE,
    FOREIGN KEY (maSV) REFERENCES SinhVien(masv) ON DELETE CASCADE
);
-- Nhập dữ liệu vào bảng Khoa
INSERT INTO Khoa (maKhoa, tenKhoa) VALUES
('K01', N'Công nghệ thông tin'),
('K02', N'Khoa học máy tính'),
('K03', N'Kinh tế'),
('K04', N'Điện tử viễn thông'),
('K05', N'Quản trị kinh doanh');

-- Nhập dữ liệu vào bảng Bộ Môn
INSERT INTO BoMon (maBM, tenBM, maKhoa) VALUES
('BM01', N'Lập trình', 'K01'),
('BM02', N'Mạng máy tính', 'K01'),
('BM03', N'Hệ thống thông tin', 'K02'),
('BM04', N'Tài chính', 'K03'),
('BM05', N'Điện tử số', 'K04');

-- Nhập dữ liệu vào bảng Giáo Viên
INSERT INTO GiaoVien (magv, hoten, NgaySinh, maBM) VALUES
('GV01', N'Nguyễn Văn A', '1980-05-10', 'BM01'),
('GV02', N'Trần Thị B', '1985-07-12', 'BM02'),
('GV03', N'Lê Văn C', '1978-09-20', 'BM03'),
('GV04', N'Phạm Thị D', '1983-11-25', 'BM04'),
('GV05', N'Hoàng Văn E', '1990-03-30', 'BM05');

-- Nhập dữ liệu vào bảng Sinh Viên
INSERT INTO SinhVien (masv, hoten, NgaySinh) VALUES
('SV01', N'Nguyễn Văn An', '2003-01-15'),
('SV02', N'Phạm Thị Bình', '2002-05-20'),
('SV03', N'Lê Văn Cường', '2003-07-25'),
('SV04', N'Trần Thị Dung', '2001-09-10'),
('SV05', N'Hoàng Văn Em', '2002-12-05');

-- Nhập dữ liệu vào bảng Lớp
INSERT INTO Lop (maLop, tenLop) VALUES
('L01', N'Kỹ thuật phần mềm K1'),
('L02', N'Mạng máy tính K2'),
('L03', N'Quản trị kinh doanh K3'),
('L04', N'Tài chính K4'),
('L05', N'Công nghệ điện tử K5');

-- Nhập dữ liệu vào bảng GVCN
INSERT INTO GVCN (maLop, hanmagv, HK) VALUES
('L01', 'GV01', 'HK1'),
('L02', 'GV02', 'HK1'),
('L03', 'GV03', 'HK2'),
('L04', 'GV04', 'HK2'),
('L05', 'GV05', 'HK3');

-- Nhập dữ liệu vào bảng LopSV
INSERT INTO LopSV (maLop, maSV, ChucVu) VALUES
('L01', 'SV01', N'Lớp trưởng'),
('L01', 'SV02', N'Lớp phó'),
('L02', 'SV03', N'Bí thư'),
('L03', 'SV04', N'Thành viên'),
('L04', 'SV05', N'Thành viên');

-- Nhập dữ liệu vào bảng Môn Học
INSERT INTO MonHoc (mamon, Tenmon, STC) VALUES
('MH01', N'Lập trình C++', 3),
('MH02', N'Cấu trúc dữ liệu', 4),
('MH03', N'Mạng máy tính', 3),
('MH04', N'Kinh tế vi mô', 3),
('MH05', N'Điện tử số', 4);

-- Nhập dữ liệu vào bảng Lớp Học Phần
INSERT INTO LopHP (maLopHP, TenLopHP, HK, maMon, maGV) VALUES
('LHP01', N'Lập trình C++ K1', 'HK1', 'MH01', 'GV01'),
('LHP02', N'Cấu trúc dữ liệu K1', 'HK1', 'MH02', 'GV02'),
('LHP03', N'Mạng máy tính K2', 'HK2', 'MH03', 'GV03'),
('LHP04', N'Kinh tế vi mô K3', 'HK3', 'MH04', 'GV04'),
('LHP05', N'Điện tử số K5', 'HK3', 'MH05', 'GV05');

-- Nhập dữ liệu vào bảng Đăng Ký Môn Học
INSERT INTO DKMH (maLopHP, maSV, DiemTP, DiemThi, PhanTramThi) VALUES
('LHP01', 'SV01', 8.5, 9.0, 50),
('LHP02', 'SV02', 7.0, 8.5, 50),
('LHP03', 'SV03', 6.5, 7.5, 60),
('LHP04', 'SV04', 9.0, 9.5, 40),
('LHP05', 'SV05', 8.0, 7.0, 50);
