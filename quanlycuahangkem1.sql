create database quanlycuahangkem
use quanlycuahangkem
create table nhanvien
( int_nv char(10),
  ten varchar(50),
  vitri varchar(50),
  gioitinh char(10),
  ngaysinh date,
  quequan varchar(max),
  sdt int,
  primary key (id_nv));
  insert into nhanvien
  values 
  ('1001','nguyen thi hien','quan ly','nu','1991-8-20','nam dinh','0954876411'),
  ('1002','ha ngoc hang','nhan vien','nu','2000-7-12','thai binh','0217569846'),
  ('1003','luong bao ngoc','nhan vien','nu','2003-6-22','ha noi','0758643514'),
  ('1004','nguyen ngoc anh','nhan vien','nam','2004-3-30','ha noi','0756483145'),
  ('1005','pham nhat minh','nhan vien','nam','2004-8-2','hai duong','0354687564')
  create table sanpham
  (id_sp int,
  ten_sp varchar(50),
  id_nhacungcap varchar(50),
  hangsp varchar(50),
  loai varchar(50),
  xuatsu varchar(50),
  gia decimal(18,2),
  primary key(id_sp),
  foreign key (id_nhacungcap) references nhacungcap(id_nhacungcap));
  insert into sanpham
  values 
  ('300','kem dau','401','vinamilk','que','viet nam','8000.00'),
  ('301','kem dau xanh','401','vinamilk','que','viet nam','8000.0'),
  ('302','kem socola','402','merino','ly','viet nam','12000.00'),
  ('303','kem sua dua','404','trang tien','que','viet nam','7000.00'),
  ('304','kem vani','402','merino','oc que','vietnam','14000.00'),
  ('305','kem sau rieng','402','merino','que','vietnam','12000.00'),
  ('306','kem mix 3 ','401','vinamilk','hop','vietnam','38000.00')
  create table nhacungcap
  (id_nhacungcap int,
  ten_nhacungcap varchar(50),
  sdt int,
  email varchar(50),
  primary key(id_nhacungcap))
  insert into nhacungcap
  values
  ('401','CTY TNHH VINAMILK','19008773','vinamilkvn@gmail.com'),
  ('402','CTY TNHH KIDO','19007784','kidovn@gmail.com'),
  ('404','CTY TNHH TRANG TIEN','19001225','trangtienvn@gmail.com')
  create table khohang
  (id_sp int not null,
  ten_sp varchar(50),
  soluongton int,
  ngaynhap date,
  id_nv char(10) not null,
  stt int not null ,
  primary key(stt),
  foreign key (id_sp) references sanpham(id_sp),
  foreign key (id_nv) references nhanvien(id_nv));
  insert into khohang
  values 
  ('300','kem dau','100','2024-3-10','1002'),
  ('301','kem dau xanh','5','2023-12-20','1002'),
  ('302','kem socola','20','2024-1-17','1004'),
  ('303','kem sua dua','20','2023-12-28','1003'),
  ('304','kem vani','50','2024-2-22','1005'),
  ('305','kem sau rieng','28','2024-1-17','1004'),
  ('306','kem mix 3','0','2024-3-18','1003')
  create table taodonhang
  (id_don int,
  tenkhach varchar(50),
  sdt int,
  diachi varchar(max),
  id_nv int,
  time datetime,
  id_sp int,
  ten_sp varchar(50),
  soluong int,
 primary key(id_don),
 foreign key (id_sp) references sanpham(id_sp),
 foreign key (id_nv) references nhanvien(id_nv))
  create table bill
  (id_don int,
  id_sp int,
  ten_sp varchar(50),
  soluong int,
  thanhtien decimal,
  stt int not null ,
  primary key(stt),
  foreign key (id_don) references taodonhang(id_don),
  foreign key (id_sp) references sanpham(id_sp))
    create table savebill
  (id_don int,
  id_sp int,
  ten_sp varchar(50),
  soluong int,
  thanhtien decimal,
  stt int not null ,
  primary key(stt))
  create table account
  (id_acc int,
  usename varchar(50),
  password varchar(max)
  primary key(id_acc))
  insert into account
  values
  (22,'dieunguyen','123456'),
  (15,'hatrinh','12345')
  select* from nhanvien
  select* from sanpham
  select *from nhacungcap
  select* from khohang
  select* from taodonhang
  select* from bill
  select* from savebill
  select* from account




