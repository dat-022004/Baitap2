BÀI TẬP VỀ NHÀ 03 - MÔN HỆ QUẢN TRỊ CSDL:  
DEADLINE: 23H59 NGÀY 30/03/2025  
ĐIỀU KIỆN: (ĐÃ LÀM XONG BÀI 2)  
BÀI TOÁN: Sửa bài 2 để có csdl như sau:  
  + SinhVien(#masv,hoten,NgaySinh)  
  + Lop(#maLop,tenLop)  
  + GVCN(#@maLop,#@magv,#HK)  
  + LopSV(#@maLop,#@maSV,ChucVu)  
  + GiaoVien(#magv,hoten,NgaySinh,@maBM)  
  + BoMon(#MaBM,tenBM,@maKhoa)  
  + Khoa(#maKhoa,tenKhoa)  
  + MonHoc(#mamon,Tenmon,STC)  
  + LopHP(#maLopHP,TenLopHP,HK,@maMon,@maGV)  
  + DKMH(#id_dk, @maLopHP,@maSV,DiemThi,PhanTramThi)  
  + Diem(#id, @id_dk, diem)  
YÊU CẦU:  
1. Sửa bảng DKMH và bảng Điểm từ bài tập 2 để có các bảng như yêu cầu.  
2. Nhập dữ liệu demo cho các bảng (nhập có kiểm soát từ tính năng Edit trên UI của mssm)  
3. Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.  
HÌNH THỨC LÀM BÀI:  
1. Tạo file bai_tap3.md trên cùng repository của bài tập 2:  
   Nội dung chứa đề bài, và ảnh chụp quá trình thao tác các yêu cầu khác.  
2. Chụp ảnh quá trình sửa bảng DKMH và quá trình thêm bảng Diem, chú ý @ là FK, và thêm CK cho trường điểm  
3. Hình sau khi chụp paste trực tiếp vào file bai_tap3.md trên github, cần mô tả các phần trên ảnh để tỏ ra là hiểu hết!  
4. dùng tính năng: Tasks -> Generate Scrips => sinh ra file: bai_tap_3_schema.sql  (chỉ chứa lệnh tạo cấu trúc của db)  
5. dùng tính năng: Tasks -> Generate Scrips => advance => Check Data only => sinh ra file: bai_tap_3_data.sql  (chỉ chứa dữ liệu đã nhập demo vào db)  
6. Tạo diagram mô tả các PK, FK của db. Chụp hình kết quả các bảng có các đường nối 1-->nhiều  
7. upload 2 file  bai_tap_3_schema.sql và bai_tap_3_data.sql lên repository.  
8. nhớ commit để save nội dung file bai_tap3.md  

----------------------------------------- Bài Làm ----------------------------------------- 

Ảnh 1:  
chỉnh sửa lại bảng DKMH có khoá chính là id_dk.  
![Screenshot 2025-03-28 153554](https://github.com/user-attachments/assets/4ab70e85-3d24-4b42-a6a0-37557a0dca22)  

Ảnh 2:  
Chuột phải vào Tables → New → Table... để tạo bảng mới trong SQL Server Management Studio (SSMS).  
![Screenshot 2025-03-28 153656](https://github.com/user-attachments/assets/51eeb1dc-8ee6-45e1-a2dc-591ca508d5b1)  

Ảnh 3:  
Chuột phải vào Tables trong Object Explorer → Chọn New Table.  
![Screenshot 2025-03-28 153656](https://github.com/user-attachments/assets/7f677a11-0600-4c5f-b37d-380638e6e8b4)  

Ảnh 4:  
Tạo bảng Diem với các nội dung đầu bài  
có khoá chính là id
lưu bảng với tên là Diem  
![Screenshot 2025-03-28 153820](https://github.com/user-attachments/assets/a949f21b-98dc-4c78-be80-f3f422bbbe42)  

Ảnh 5:  
Mở bảng Diem → chọn Design.  
Chuột phải trong giao diện → chọn Relationships....  
Nhấn Add để thêm khóa ngoại.  
Trong Tables and Columns Specification  
Primary key table: DKMH (bảng chính).  
Foreign key table: Diem (bảng phụ), liên kết cột id_dk.  
Nhấn OK để lưu quan hệ.  
![Screenshot 2025-03-28 153920](https://github.com/user-attachments/assets/3c9358eb-23a1-4b71-a15f-ee48c91d4dbe)

Ảnh 6:  
 Nhập dữ liệu demo cho các bảng  
![image](https://github.com/user-attachments/assets/c2bad4d7-3df7-45b7-8375-6298472bb8ab)  

Ảnh 7:  
Viết lệnh truy vấn để: Tính được điểm thành phần của 1 sinh viên đang học tại 1 lớp học phần.  
![Screenshot 2025-03-28 163748](https://github.com/user-attachments/assets/b1dd8b0e-c410-4ed6-bc27-b059214cd568) 

Ảnh 8:  
Mở SSMS, kết nối đến SQL Server và chọn cơ sở dữ liệu (QLSV).  
Chuột phải vào "Database Diagrams" → Chọn "New Database Diagram".  
![image](https://github.com/user-attachments/assets/091c1e4f-bd23-4f9b-b9e5-1e829351027c)

Ảnh 9:  
Chọn các bảng bạn muốn hiển thị trong sơ đồ, rồi nhấn "Add".  
![image](https://github.com/user-attachments/assets/fbf598f3-aad9-40b1-99db-1c39c3aade84)

Ảnh 10:  
Sắp xếp quan hệ giữa các bảng theo ý muốn.  
Lưu sơ đồ bằng cách nhấn Ctrl + S.  
![Screenshot 2025-03-28 164627](https://github.com/user-attachments/assets/aa633ba7-5868-4539-85d9-ea5b1c213425)  

Ảnh 11:  
Tạo file bai_tap_3_schema.sql (chứa cấu trúc database)  
Mở SSMS và kết nối với SQL Server.  
Chọn database QLSV trong Object Explorer.  
Nhấp chuột phải vào QLSV → Chọn Tasks → Chọn Generate Scripts...  
![Screenshot 2025-03-28 172611](https://github.com/user-attachments/assets/e4ec321b-36ff-4dfc-a021-8a3b61c07d77)

Ảnh 12+13:  
tiếp tục Next qua 2 bước này:  
![Screenshot 2025-03-28 172957](https://github.com/user-attachments/assets/37e68101-730b-4c44-ac96-e4ab1cf932b8)  
![Screenshot 2025-03-28 173029](https://github.com/user-attachments/assets/2993ff20-6730-4cd1-b9a8-e9cc8c7a079d)  

Ảnh 14:  
Ở bước Set Scripting Options, nhấn Advanced.  
Trong danh sách Options, tìm đến mục:  
Types of data to script → Chọn Schema only  
Nhấn OK để lưu thay đổi.  
![Screenshot 2025-03-28 171845](https://github.com/user-attachments/assets/97199b48-5c4d-453d-975a-aa112835113f)  

Ảnh 15:  
Ở phần Specify how scripts should be saved:  
Chọn Save as script file  
Nhấn Browse để chọn thư mục lưu file  
Đặt tên file là bai_tap_3_schema.sql  
Nhấn Next → Finish để hoàn tất.  
![Screenshot 2025-03-28 172335](https://github.com/user-attachments/assets/fd5b5662-743d-4173-a339-8d254f690637)

Ảnh 16+17:  
Nhấn Next → Finish để hoàn tất.  
![Screenshot 2025-03-28 172350](https://github.com/user-attachments/assets/0f99dd02-2958-4d54-9819-e0708767dbd9)  
![Screenshot 2025-03-28 172409](https://github.com/user-attachments/assets/60eb9644-2658-4848-aaf2-af05e9589103)  

Ảnh 18:  
lập lại các bước của thao tác tạo Tạo file bai_tap_3_schema.sql (chứa cấu trúc database)  
đén bước Cấu hình xuất file SQL chỉ chứa dữ liệu
Ở bước Set Scripting Options, nhấn Advanced.  
Trong danh sách Options, tìm đến mục:  
Types of data to script → Chọn Data only  
Nhấn OK để lưu thay đổi.  
![image](https://github.com/user-attachments/assets/9fad751f-d83e-46b2-adf0-f2d67e731872)

Ảnh 19:  
Ở phần Specify how scripts should be saved:  
Chọn Save as script file  
Nhấn Browse để chọn thư mục lưu file  
Đặt tên file là bai_tap_3_data.sql  
![Screenshot 2025-03-28 173333](https://github.com/user-attachments/assets/42a2970b-f262-4d5a-9ca7-83dc0f74c6ba)  

Ảnh 20:  
Nhấn Next → Finish để hoàn tất.  
![Screenshot 2025-03-28 173420](https://github.com/user-attachments/assets/a627fa30-cb9b-4911-88e7-f636de75f291)  

Ảnh 21:  
Cuối cùng ta thu được 2 file như hình dưới.  
![image](https://github.com/user-attachments/assets/8867c7c5-6b71-4872-9af8-297421fa30ed)






