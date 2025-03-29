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

