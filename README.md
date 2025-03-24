# Baitap2
Bài tập 2 của sv: k225480106003 - Đặng Đình Đạt - Môn hệ quản trị CSDL.  
Ảnh 1:  
Nhấp chuột phải vào Databases → Chọn **New Database... để tạo cơ sở dữ liệu mới.
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
Masv (varchar(13)) – Khóa chính
Hoten (varchar(50))  
Ngaysinh (date)  
Lưu bảng (Ctrl + S), đặt tên "sinhvien" → OK.  
![Screenshot 2025-03-20 150449](https://github.com/user-attachments/assets/69b65491-ad5b-4e17-8b78-787ed39502db)  

Ảnh 5:  
Thao tác lập bảng "lop":  
Chuột phải Tables → New Table.  
Bảng "Lop" có các cột:  
Malop (varchar(50)) – Khóa chính  
Tenlop (varchar(50))  
Lưu bảng (Ctrl + S), đặt tên "lop" → OK.   
![Screenshot 2025-03-20 150953](https://github.com/user-attachments/assets/eb929e71-6161-4e14-ba45-0ac9c64a4eb4)  

Ảnh 6:  
Thao tác lập bảng "GVCN": 
Chuột phải Tables → New Table.  
Bảng "GVCN" có các cột:  
Malop (varchar(50)) – Khóa chính  
magv (varchar(50)) – Khóa chính  
Hk (int) – Khóa chính  
Lưu bảng (Ctrl + S), đặt tên "GVCN" → OK.   
![Screenshot 2025-03-20 212645](https://github.com/user-attachments/assets/57f340a5-fe26-49e4-9f35-c82af453649b)  

Ảnh 7:  
Thao tác lập bảng "lopSV":  
Chuột phải Tables → New Table.  
Bảng "lopSV hiện có các cột:  
Malop (varchar(50)) – Khóa chính  
Masv (varchar(50)) – Khóa chính  
Chucvu (nvarchar(50)) – Cho phép NULL  
Lưu bảng (Ctrl + S), đặt tên "lopSV" → OK.   
![Screenshot 2025-03-20 212658](https://github.com/user-attachments/assets/9b3e7687-ce22-4773-89ae-70cc195f7e28)  

Ảnh 8:  
Thao tác lập bảng "Giaovien": 
Chuột phải Tables → New Table.  
Thêm các cột:  
Magv (varchar(50), khóa chính).  
Hoten (nvarchar(50), cho phép NULL).  
Ngaysinh (date, cho phép NULL).  
MaBM (varchar(50), không NULL).  
Lưu bảng (Ctrl + S), đặt tên Giaovien → OK.  
![Screenshot 2025-03-20 213006](https://github.com/user-attachments/assets/5b6002fd-aa2b-45ff-9515-fb347f4e3876)  
