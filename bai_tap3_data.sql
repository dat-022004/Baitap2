USE [QLSV]
GO
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'CK        ', N'Cơ khí')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'CNTT      ', N'Công nghệ thông tin')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'DT        ', N'Điện tử')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'QTKD      ', N'Quản trị kinh doanh')
INSERT [dbo].[Khoa] ([maKhoa], [tenKhoa]) VALUES (N'XD        ', N'Xây dựng')
GO
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'CNCK      ', N'Công nghệ cơ khí', N'CK        ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'DKTD      ', N'Điều khiển tự động', N'DT        ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'HTTT      ', N'Hệ thống thông tin', N'CNTT      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'PM        ', N'Phần mềm', N'CNTT      ')
INSERT [dbo].[BoMon] ([maBM], [tenBM], [maKhoa]) VALUES (N'QLKT      ', N'Quản lý kinh tế', N'QTKD      ')
GO
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV001     ', N'Nguyễn Văn A', CAST(N'1980-01-15' AS Date), N'PM        ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV002     ', N'Trần Thị B', CAST(N'1975-05-22' AS Date), N'HTTT      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV003     ', N'Lê Văn C', CAST(N'1983-07-10' AS Date), N'QLKT      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV004     ', N'Phạm Thị D', CAST(N'1988-09-30' AS Date), N'CNCK      ')
INSERT [dbo].[GiaoVien] ([magv], [hoten], [NgaySinh], [maBM]) VALUES (N'GV005     ', N'Hoàng Văn E', CAST(N'1990-12-25' AS Date), N'DKTD      ')
GO
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'CK1       ', N'Lớp Cơ khí 1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'CNTT1     ', N'Lớp Công nghệ thông tin 1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'CNTT2     ', N'Lớp Công nghệ thông tin 2')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'DT1       ', N'Lớp Điện tử 1')
INSERT [dbo].[Lop] ([maLop], [tenLop]) VALUES (N'QTKD1     ', N'Lớp Quản trị kinh doanh 1')
GO
INSERT [dbo].[GVCN] ([maLop], [hanmagv], [HK]) VALUES (N'CK1       ', N'GV004     ', N'HK2       ')
INSERT [dbo].[GVCN] ([maLop], [hanmagv], [HK]) VALUES (N'CNTT1     ', N'GV001     ', N'HK1       ')
INSERT [dbo].[GVCN] ([maLop], [hanmagv], [HK]) VALUES (N'CNTT2     ', N'GV002     ', N'HK1       ')
INSERT [dbo].[GVCN] ([maLop], [hanmagv], [HK]) VALUES (N'DT1       ', N'GV005     ', N'HK3       ')
INSERT [dbo].[GVCN] ([maLop], [hanmagv], [HK]) VALUES (N'QTKD1     ', N'GV003     ', N'HK2       ')
GO
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'CTDL      ', N'Cấu trúc dữ liệu', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'DTVT      ', N'Điện tử viễn thông', 4)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'HTTT      ', N'Hệ thống thông tin', 2)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'LTHDT     ', N'Lập trình hướng đối tượng', 3)
INSERT [dbo].[MonHoc] ([mamon], [Tenmon], [STC]) VALUES (N'QLTC      ', N'Quản lý tài chính', 3)
GO
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP001    ', N'Lớp Cấu trúc dữ liệu', N'HK1       ', N'CTDL      ', N'GV001     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP002    ', N'Lớp Lập trình HĐT', N'HK1       ', N'LTHDT     ', N'GV002     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP003    ', N'Lớp Hệ thống thông tin', N'HK2       ', N'HTTT      ', N'GV003     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP004    ', N'Lớp Quản lý tài chính', N'HK2       ', N'QLTC      ', N'GV004     ')
INSERT [dbo].[LopHP] ([maLopHP], [TenLopHP], [HK], [maMon], [maGV]) VALUES (N'LHP005    ', N'Lớp Điện tử viễn thông', N'HK3       ', N'DTVT      ', N'GV005     ')
GO
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV001     ', N'Nguyễn Văn Nam', CAST(N'2003-03-10' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV002     ', N'Trần Thị Linh', CAST(N'2002-11-22' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV003     ', N'Phạm Hồng Phúc', CAST(N'2004-06-18' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV004     ', N'Lê Minh Tuấn', CAST(N'2003-08-30' AS Date))
INSERT [dbo].[SinhVien] ([masv], [hoten], [NgaySinh]) VALUES (N'SV005     ', N'Đặng Thị Hoa', CAST(N'2002-05-14' AS Date))
GO
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'CK1       ', N'SV004     ', N'Thành viên')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'CNTT1     ', N'SV001     ', N'Lớp trưởng')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'CNTT1     ', N'SV002     ', N'Bí thư')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'DT1       ', N'SV005     ', N'Thành viên')
INSERT [dbo].[LopSV] ([maLop], [maSV], [ChucVu]) VALUES (N'QTKD1     ', N'SV003     ', N'Phó lớp')
GO
SET IDENTITY_INSERT [dbo].[DKMH] ON 

INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (1, N'LHP001    ', N'SV001     ', 8.5, 70)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (2, N'LHP002    ', N'SV002     ', 7.2, 80)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (3, N'LHP003    ', N'SV003     ', 6.8, 75)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (4, N'LHP004    ', N'SV004     ', 9.1, 85)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (5, N'LHP005    ', N'SV005     ', 5.5, 60)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (6, N'LHP001    ', N'SV001     ', 8.5, 70)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (7, N'LHP002    ', N'SV002     ', 7.2, 80)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (8, N'LHP003    ', N'SV003     ', 6.8, 75)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (9, N'LHP004    ', N'SV004     ', 9.1, 85)
INSERT [dbo].[DKMH] ([id_dk], [maLopHP], [maSV], [DiemThi], [PhanTramThi]) VALUES (10, N'LHP005    ', N'SV005     ', 5.5, 60)
SET IDENTITY_INSERT [dbo].[DKMH] OFF
GO
SET IDENTITY_INSERT [dbo].[Diem] ON 

INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (1, 1, 8.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (2, 2, 7.2)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (3, 3, 6.8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (4, 4, 9.1)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (5, 5, 5.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (6, 1, 8.5)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (7, 2, 7.2)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (8, 3, 6.8)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (9, 4, 9.1)
INSERT [dbo].[Diem] ([id], [id_dk], [diem]) VALUES (10, 5, 5.5)
SET IDENTITY_INSERT [dbo].[Diem] OFF
GO
