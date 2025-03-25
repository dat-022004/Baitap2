# Baitap2
Bài tập 2 của sv: k225480106003 - Đặng Đình Đạt - Môn hệ quản trị CSDL.  
Ảnh 1:  
Nhấp chuột phải vào Databases → Chọn New Database... để tạo cơ sở dữ liệu mới.
![Screenshot 2025-03-20 145251](https://github.com/user-attachments/assets/0bff4950-37c0-4dfb-852e-e77d4cb319e0)  

Ảnh 2:  
Nhập tên cơ sở dữ liệu vào ô Database name (ví dụ: QLSV).  
Kiểm tra đường dẫn lưu trữ tập tin dữ liệu và log trong cột Path (ví dụ: D:\học tập\HQTCSDL).  
Xác định thông tin Autogrowth, Maxsize của các tập tin dữ liệu.  
Nhấn OK để tạo cơ sở dữ liệu.  
![Screenshot 2025-03-20 145500](https://github.com/user-attachments/assets/c04a84fb-a426-46ca-9efe-0fb121922b31)  

Ảnh 3:  
Nhấp chuột phải vào Tables trong cơ sở dữ liệu QLSV → Chọn New → Table... để tạo bảng mới.   
![Screenshot 2025-03-20 145625](https://github.com/user-attachments/assets/752ea619-5c04-4a68-87f2-24689448325e)  

Ảnh 4:  
Thao tác lập bảng "sinhvien":  
Chuột phải Tables → New Table.  
Bảng "sinhvien" có các cột:  
- Masv (varchar(13)) – Khóa chính.
- Hoten (nvarchar(50)) Cho phép NULL.  
- Ngaysinh (date) Cho phép NULL.  
Lưu bảng (Ctrl + S), đặt tên sinhvien → OK.  
![Screenshot 2025-03-20 150449](https://github.com/user-attachments/assets/69b65491-ad5b-4e17-8b78-787ed39502db)  

Ảnh 5:  
Thao tác lập bảng "lop":  
Chuột phải Tables → New Table.  
Bảng "Lop" có các cột:  
- Malop (varchar(50)) – Khóa chính  
- Tenlop (varchar(50)) Cho phép NULL.  
Lưu bảng (Ctrl + S), đặt tên lop → OK.   
![Screenshot 2025-03-20 150953](https://github.com/user-attachments/assets/eb929e71-6161-4e14-ba45-0ac9c64a4eb4)  

Ảnh 6:  
Thao tác lập bảng "GVCN":  
Chuột phải Tables → New Table.  
Bảng "GVCN" có các cột:  
- Malop (varchar(50)) – Khóa chính  
- magv (varchar(50)) – Khóa chính  
- Hk (int) – Khóa chính  
Lưu bảng (Ctrl + S), đặt tên GVCN → OK.   
![Screenshot 2025-03-20 212645](https://github.com/user-attachments/assets/57f340a5-fe26-49e4-9f35-c82af453649b)  

Ảnh 7:  
Thao tác lập bảng "lopSV":  
Chuột phải Tables → New Table.  
Bảng "lopSV hiện có các cột:  
- Malop (varchar(50)) – Khóa chính  
- Masv (varchar(50)) – Khóa chính  
- Chucvu (nvarchar(50)) – Cho phép NULL  
Lưu bảng (Ctrl + S), đặt tên lopSV → OK.   
![Screenshot 2025-03-20 212658](https://github.com/user-attachments/assets/9b3e7687-ce22-4773-89ae-70cc195f7e28)  

Ảnh 8:  
Thao tác lập bảng "Giaovien":   
Chuột phải Tables → New Table.  
Bảng "Giaovien" hiện có các cột:  
- Magv (varchar(50), khóa chính).  
- Hoten (nvarchar(50), cho phép NULL).  
- Ngaysinh (date, cho phép NULL).  
- MaBM (varchar(50), Cho phép NULL .  
Lưu bảng (Ctrl + S), đặt tên Giaovien → OK.  
![Screenshot 2025-03-20 213006](https://github.com/user-attachments/assets/5b6002fd-aa2b-45ff-9515-fb347f4e3876)  

Ảnh 9:  
Thao tác lập bảng "Bomon":  
Chuột phải Tables → New Table.  
Bảng "Bomon" hiện có các cột:  
- MaBM (varchar(50), khóa chính, không NULL).  
- TenBM (varchar(50), cho phép NULL).  
- MaKhoa (varchar(50), Cho phép NULL .  
Lưu bảng (Ctrl + S), đặt tên Bomon → OK.  
![Screenshot 2025-03-20 213128](https://github.com/user-attachments/assets/058a41c0-46f6-44a2-86ad-c12fccb9343c)

Ảnh 10:  
Thao tác lập bảng "Khoa":  
Chuột phải Tables → New Table.  
Bảng "Khoa" hiện có các cột:  
- MaKhoa (varchar(50), khóa chính, không NULL).  
- TenKhoa (nvarchar(50), cho phép NULL).  
Lưu bảng (Ctrl + S), đặt tên Khoa → OK.  
![Screenshot 2025-03-20 213306](https://github.com/user-attachments/assets/7c7ed54d-2580-48a8-9032-9f9aa18cc7ca)  

ẢNh 11:  
Thao tác lập bảng "monhoc":  
Chuột phải Tables → New Table.  
Bảng "monhoc" hiện có các cột:  
- mamon (varchar(50), khóa chính, không NULL).  
- tenmon (nvarchar(50), cho phép NULL).  
- STC (int), cho phep NULL.  
Lưu bảng (Ctrl + S), đặt tên monhoc → OK.
![Screenshot 2025-03-20 213437](https://github.com/user-attachments/assets/cda3d0e8-bcfc-43f8-839a-a791f2422a7f)

Ảnh 12:  
Thao tác lập bảng "LopHP":  
Chuột phải Tables → New Table.  
Bảng "LopHP" hiện có các cột:  
- MalopHP (varchar(50), khóa chính, không NULL).  
- TenlopHP (nvarchar(50), cho phép NULL).  
- HK (int), cho phép NULL.  
- Mamon (varchar(50), cho phép NULL).  
- magv (varchar(50), cho phép NULL).  
Lưu bảng (Ctrl + S), đặt tên LopHP → OK.  
![Screenshot 2025-03-20 213714](https://github.com/user-attachments/assets/656285c0-a9cb-4713-bb93-96fd71b016d9)

Ảnh 13:  
Thao tác lập bảng "DKMH":  
Chuột phải Tables → New Table.  
Bảng "DKMH" hiện có các cột:  
- MalopHP (varchar(50), khóa chính, không NULL).  
- Masv (varchar(50), khóa chính, không NULL).  
- DiemTP (float), cho phép NULL.  
- DiemThi (float), cho phép NULL.
- phantramthi (float), cho phép NULL.  
Lưu bảng (Ctrl + S), đặt tên DKMH → OK.  
![Screenshot 2025-03-20 214141](https://github.com/user-attachments/assets/9c7f8841-90e2-4405-aa1a-234125e2830a)

Ảnh 14:  
- Chuột phải vào "Tables" trong Object Explorer.  
- Chọn "Refresh".  
Điều này sẽ cập nhật danh sách các bảng hiện có trong cơ sở dữ liệu của bạn.  
![Screenshot 2025-03-20 151027](https://github.com/user-attachments/assets/ad1b6a6e-2cd8-4822-8856-fbe92b0c5e33)

Ảnh 15:  
chuột phải trên cột trong SQL Server Management Studio (SSMS) và chọn "Check Constraints..." để kiểm tra hoặc chỉnh sửa để kiểm tra hoặc chỉnh sửa việc kiểm tra (CHECK CONSTRAINTS) của bảng.  
![Screenshot 2025-03-20 214918](https://github.com/user-attachments/assets/3b6f0110-6913-4872-ae3c-7e817da5abee)  

Ảnh 15:  
Kiểm tra ràng buộc trong SQL Server Managementquản lý Ràngtrong SQL Server Management Studio (SSMS).  
Ràng buộc kiểm tra CK_MonHoc được áp dụng _STC > = 1 andđược áp dụng với biểu thức:  
STC >= 1 và STC <= 4 , STC cột giá trị đảm bảo chỉ nằm trong khoảng từ 1 đến 4.  
![Screenshot 2025-03-20 214851](https://github.com/user-attachments/assets/00a89240-35e1-4014-96b8-300208bf5256)  

Ảnh 16:  
Trong ảnh, người dùng đang thiết lập khóa ngoại (Foreign Key) giữa hai bảng GVCN và Lop trong SQL Server Management Studio. Cụ thể, khóa ngoại FK_GVCN_Lop liên kết cột malop giữa hai bảng.  
![Screenshot 2025-03-24 084015](https://github.com/user-attachments/assets/09f8d0e6-fd47-4349-8afe-ade7d50f9040)  

ẢNh 17:  
Lập khóa ngoại FK_GVCN_giaovien giữa bảng giaovien và GVCN trong SQL Server Management Studio. Cụ thể, cột magv trong bảng GVCN sẽ tham chiếu đến cột magv trong bảng giaovien.  
![Screenshot 2025-03-24 084224](https://github.com/user-attachments/assets/5049ac3d-7963-4f19-8c9b-12a549db8317)  

Ảnh 18:  
Thiết lập khóa ngoại FK_lopsv_Sinhvien giữa bảng Sinhvien và lopsv trong SQL Server Management Studio. Cụ thể, cột masv trong bảng lopsv sẽ tham chiếu đến cột masv trong bảng Sinhvien.  
![Screenshot 2025-03-24 084518](https://github.com/user-attachments/assets/2e80d397-910b-45d2-9702-aad33a0aece9)

Ảnh 19:  
Đang chỉnh sửa khóa ngoại FK_GVCN_giaovien giữa bảng giaovien và GVCN trong SQL Server Management Studio. Cụ thể, cột magv trong bảng GVCN sẽ tham chiếu đến cột magv trong bảng giaovien.  
![Screenshot 2025-03-24 084715](https://github.com/user-attachments/assets/a9c3f7d9-1612-4799-a877-9799711bea8c)  

Ảnh 20:  
Tạo khóa ngoại FK_bomon_khoa giữa bảng bomon và khoa trong SQL Server Management Studio. Cụ thể, cột makhoa trong bảng bomon sẽ tham chiếu đến cột makhoa trong bảng khoa.  
![Screenshot 2025-03-24 084812](https://github.com/user-attachments/assets/71b6ba7b-ff4c-452a-9a3f-eb5c93adf025)  

Ảnh 21:  
Đang tạo khóa ngoại FK_lophp_monhoc giữa bảng lophp và monhoc trong SQL Server Management Studio. Cụ thể, cột mamon trong bảng lophp sẽ tham chiếu đến cột mamon trong bảng monhoc.  
![Screenshot 2025-03-24 084951](https://github.com/user-attachments/assets/89b74f62-5da6-493b-96c1-35d96835fb92)  

Ảnh 22:  
Đang tạo khóa ngoại FK_dkmh_lophp giữa bảng dkmh và lophp trong SQL Server Management Studio. Cụ thể, cột malophp trong bảng dkmh sẽ tham chiếu đến cột malophp trong bảng lophp.  
![Screenshot 2025-03-24 085253](https://github.com/user-attachments/assets/1b662d27-8fbe-4ac2-a53b-3d3dd51e9754)  

Ảnh 23:  
Đang tạo khóa ngoại FK_dkmh_Sinhvien giữa bảng dkmh và Sinhvien trong SQL Server Management Studio. Cụ thể, cột masv trong bảng dkmh sẽ tham chiếu đến cột masv trong bảng Sinhvien.  
![Screenshot 2025-03-24 085405](https://github.com/user-attachments/assets/bb633199-a133-443b-a3c1-a1c4f98c683b)  

Ảnh 24:  
Đang tạo cơ sở dữ liệu QLSV trong SQL Server với:  
- Tệp chính (.mdf): D:\học tập\HQTCSDL\QLSV.mdf (64MB, tăng 64MB, không giới hạn).  
- Tệp nhật ký (.ldf): D:\học tập\HQTCSDL\QLSV_log.ldf (64MB, tăng 64MB, không giới hạn).  
![Screenshot 2025-03-24 170944](https://github.com/user-attachments/assets/925907dc-4be7-494b-81c9-fce261618bb3)


Ảnh 25:  
Tạo cơ sở dữ liệu cho bảng khoa bằng lệnh SQL:  
![Screenshot 2025-03-24 171353](https://github.com/user-attachments/assets/4365dbff-17ff-4d4b-82af-ac3c507c9b0b)  

Ảnh 26:  
Tạo cơ sở dữ liệu cho bảng Bomon bằng lệnh SQL:  
![Screenshot 2025-03-24 171513](https://github.com/user-attachments/assets/a697c4c3-dbeb-4745-96cf-44debe393712)  

Ảnh 27:  
Tạo cơ sở dữ liệu cho bảng Giaovien bằng lệnh SQL:  
![Screenshot 2025-03-24 171544](https://github.com/user-attachments/assets/ffd4a1af-dea2-4108-bdf7-76e9f89ec476)  

Ảnh 28:  
Tạo cơ sở dữ liệu cho bảng sinhvien bằng lệnh SQL:  
![Screenshot 2025-03-24 173738](https://github.com/user-attachments/assets/69fd2d56-8f02-4f83-b368-63bbac57d522)  

Ảnh 29:  
Tạo cơ sở dữ liệu cho bảng GVCN bằng lệnh SQL:  
![Screenshot 2025-03-24 173844](https://github.com/user-attachments/assets/b45e2603-5017-468f-ac42-c00251009046)  

Ảnh 30:  
Tạo cơ sở dữ liệu cho bảng LopSV bằng lệnh SQL:  
![Screenshot 2025-03-24 173902](https://github.com/user-attachments/assets/1c2c9498-99a7-499a-941f-8561dcf5b753)  

Ảnh 31:  
Tạo cơ sở dữ liệu cho bảng MonHoc bằng lệnh SQL:  
![Screenshot 2025-03-24 173920](https://github.com/user-attachments/assets/507a3cab-83b8-4e50-bf54-6d3b71e35427)  

Ảnh 32:  
Tạo cơ sở dữ liệu cho bảng LopHP bằng lệnh SQL:  
![Screenshot 2025-03-24 173945](https://github.com/user-attachments/assets/a3f5f624-d009-40dd-957f-d7270c4e0352)  

Ảnh 33:  
Tạo cơ sở dữ liệu cho bảng DKMH bằng lệnh SQL:  
![Screenshot 2025-03-24 174009](https://github.com/user-attachments/assets/f50705d2-6309-431d-8942-7480f6eab579)  

Ảnh 34:  
Sau khi tạo song các bảng bằng lệnh SQL ta thu được các bảng dống hệt với các bảng toạ bằng thao tác đồ hoạ.  
![Screenshot 2025-03-24 174032](https://github.com/user-attachments/assets/258d1566-b5e7-4770-b432-907c0f51423c)































