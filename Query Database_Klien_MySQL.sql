################################### BUILT DATABASE

create database kliensevima; #running row 3 utk memulai database
use kliensevima; #memanggil file database (jika sudah mulai membuatdatabase, cukup running ini saja untuk menampilkan output)

create table MasterKlien(
ID_Klien varchar(10) not null,
Nama_Klien varchar (50) not null,
Kota varchar (20) not null,
PIC varchar (50) not null,
Status_Klien varchar (10) not null,
Status_Lead varchar (10) not null,
No_Telp bigint not null,
Email_Klien varchar (25) not null,
primary key(ID_Klien)
);

create table SalesPerson(
Nama_Sales varchar (50) not null,
ID_Salesperson varchar(10) not null,
Jabatan varchar (30) not null,
primary key (Nama_Sales)
);

create table DataTransaksi(
ID_Transaksi varchar(10) not null,
Tanggal date not null,
ID_Klien varchar(10) not null,
Nama_Klien varchar (50) not null,
Kota varchar (20) not null,
Nama_Sales varchar (50) not null,
Produk varchar(50) not null,
Kategori_Produk varchar(50) not null,
Quantity int not null,
Harga_Satuan int not null,
Status_Transaksi varchar(15) not null
primary key(ID_Transaksi),
constraint fk_ID_Klien foreign key (ID_Klien) references MasterKlien (ID_Klien),
constraint fk_ID_Salesperson foreign key (Nama_Sales) references SalesPerson (Nama_Sales)
);

####################### INSERT VALUE DATA

insert into MasterKlien values
("KL-001","PT Maju Bersama","Surabaya","Bapak Hendra","Non-Aktif","Warm",08115926217,"cs@majubersama.co.id"),
("KL-002","PT Nusantara Jaya","Jakarta","Bapak Dodi","Non-Aktif","Warm",08801660785,"cs@nusantarajaya.co.id"),
("KL-003","PT Sinar Makmur","Bandung","Ibu Sarah","Aktif","Cold",08451943376,"cs@sinarmakmur.co.id"),
("KL-004","PT Karya Utama","Semarang","Bapak Dodi","Aktif","Cold",08147842055,"cs@karyautama.co.id"),
("KL-005","PT Global Teknindo","Medan","Bapak Dodi","Aktif","Cold",08509746306,"cs@globalteknindo.co.id"),
("KL-006","PT Prima Sejahtera","Makassar","Bapak Dodi","Aktif","Cold",08590518715,"cs@primasejahtera.co.id"),
("KL-007","PT Delta Solusi","Surabaya","Bapak Dodi","Aktif","Cold",08242784194,"cs@deltasolusi.co.id"),
("KL-008","PT Cipta Mandiri","Yogyakarta","Bapak Hendra","Aktif","Warm",08502914096,"cs@ciamandiri.co.id"),
("KL-009","PT Indo Perkasa","Jakarta","Ibu Rina","Prospek","Hot",08243851904,"cs@indoperkasa.co.id"),
("KL-010","PT Cahaya Baru","Denpasar","Bapak Dodi","Aktif","Cold",08928988255,"cs@cahayabaru.co.id"),
("KL-011","PT Mitra Abadi","Balikpapan","Bapak Hendra","Aktif","Cold",08583852762,"cs@mitraabadi.co.id"),
("KL-012","PT Anugerah Teknik","Surabaya","Ibu Yanti","Non-Aktif","Hot",08727651733,"cs@anugerahteknik.co.id"),
("KL-013","PT Sumber Rezeki","Bandung","Ibu Rina","Prospek","Hot",08543316015,"cs@sumberrezeki.co.id"),
("KL-014","PT Mega Solusi","Jakarta","Ibu Sarah","Aktif","Hot",08423372648,"cs@megasolusi.co.id"),
("KL-015","PT Harapan Bangsa","Palembang","Ibu Rina","Prospek","Hot",08512766609,"cs@harapanbangsa.co.id");

insert into SalesPerson values
("Andi Wijaya","SP-001","Senior Sales"),
("Budi Santoso","SP-002","Sales Executive"),
("Citra Dewi","SP-003","Sales Executive"),
("Dian Pertiwi","SP-004","Junior Sales"),
("Eko Prasetyo","SP-005","Senior Sales"),
("Fitri Handayani","SP-006","Sales Executive"); 

insert into DataTransaksi values
 ('TRX-0001', '2023-01-21', 'KL-002', 'PT Nusantara Jaya', 'Jakarta', 'Andi Wijaya', 'Jasa Implementasi', 'Jasa', 8, 6000000, 'Selesai'),
  ('TRX-0002', '2023-01-19', 'KL-007', 'PT Delta Solusi', 'Surabaya', 'Andi Wijaya', 'Software ERP', 'Software', 3, 18000000, 'Selesai'),
  ('TRX-0003', '2023-01-18', 'KL-004', 'PT Karya Utama', 'Semarang', 'Fitri Handayani', 'Cloud Storage 1TB', 'Layanan Cloud', 8, 3000000, 'Pending'),
  ('TRX-0004', '2023-11-02', 'KL-005', 'PT Global Teknindo', 'Medan', 'Budi Santoso', 'Server Rack', 'Hardware', 11, 21000000, 'Selesai'),
  ('TRX-0005', '2023-02-28', 'KL-006', 'PT Prima Sejahtera', 'Makassar', 'Eko Prasetyo', 'Jasa Implementasi', 'Jasa', 2, 6000000, 'Selesai'),
  ('TRX-0006', '2023-02-18', 'KL-005', 'PT Global Teknindo', 'Medan', 'Fitri Handayani', 'Jasa Konsultasi IT', 'Jasa', 19, 4000000, 'Selesai'),
  ('TRX-0007', '2023-03-03', 'KL-014', 'PT Mega Solusi', 'Jakarta', 'Budi Santoso', 'Software CRM', 'Software', 13, 22000000, 'Selesai'),
  ('TRX-0008', '2023-12-03', 'KL-006', 'PT Prima Sejahtera', 'Makassar', 'Budi Santoso', 'Jasa Implementasi', 'Jasa', 3, 20000000, 'Selesai'),
  ('TRX-0009', '2023-03-15', 'KL-007', 'PT Delta Solusi', 'Surabaya', 'Citra Dewi', 'Server Rack', 'Hardware', 11, 39000000, 'Pending'),
  ('TRX-0010', '2023-09-04', 'KL-002', 'PT Nusantara Jaya', 'Jakarta', 'Budi Santoso', 'Jasa Konsultasi IT', 'Jasa', 7, 15000000, 'Selesai'),
  ('TRX-0011', '2023-09-04', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Budi Santoso', 'Jasa Implementasi', 'Jasa', 19, 14000000, 'Selesai'),
  ('TRX-0012', '2023-04-17', 'KL-008', 'PT Cipta Mandiri', 'Yogyakarta', 'Andi Wijaya', 'Software ERP', 'Software', 4, 14000000, 'Dibatalkan'),
  ('TRX-0013', '2023-03-05', 'KL-007', 'PT Delta Solusi', 'Surabaya', 'Dian Pertiwi', 'VPN Enterprise', 'Layanan Cloud', 17, 2000000, 'Dibatalkan'),
  ('TRX-0014', '2023-05-25', 'KL-005', 'PT Global Teknindo', 'Medan', 'Fitri Handayani', 'Jasa Konsultasi IT', 'Jasa', 4, 8000000, 'Selesai'),
  ('TRX-0015', '2023-05-24', 'KL-015', 'PT Harapan Bangsa', 'Palembang', 'Fitri Handayani', 'Jasa Implementasi', 'Jasa', 17, 6000000, 'Dibatalkan'),
  ('TRX-0016', '2023-06-20', 'KL-004', 'PT Karya Utama', 'Semarang', 'Budi Santoso', 'Jasa Konsultasi IT', 'Jasa', 6, 3000000, 'Selesai'),
  ('TRX-0017', '2023-06-16', 'KL-001', 'PT Maju Bersama', 'Surabaya', 'Andi Wijaya', 'Jasa Konsultasi IT', 'Jasa', 10, 10000000, 'Selesai'),
  ('TRX-0018', '2023-03-06', 'KL-012', 'PT Anugerah Teknik', 'Surabaya', 'Dian Pertiwi', 'Software CRM', 'Software', 18, 13000000, 'Dibatalkan'),
  ('TRX-0019', '2023-06-07', 'KL-005', 'PT Global Teknindo', 'Medan', 'Eko Prasetyo', 'Cloud Storage 1TB', 'Layanan Cloud', 7, 5000000, 'Pending'),
  ('TRX-0020', '2023-07-22', 'KL-011', 'PT Mitra Abadi', 'Balikpapan', 'Citra Dewi', 'VPN Enterprise', 'Layanan Cloud', 17, 4000000, 'Selesai'),
  ('TRX-0021', '2023-11-07', 'KL-001', 'PT Maju Bersama', 'Surabaya', 'Eko Prasetyo', 'Server Rack', 'Hardware', 19, 10000000, 'Selesai'),
  ('TRX-0022', '2023-03-08', 'KL-015', 'PT Harapan Bangsa', 'Palembang', 'Andi Wijaya', 'Jasa Konsultasi IT', 'Jasa', 3, 11000000, 'Selesai'),
  ('TRX-0023', '2023-08-18', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Fitri Handayani', 'VPN Enterprise', 'Layanan Cloud', 8, 2000000, 'Selesai'),
  ('TRX-0024', '2023-08-22', 'KL-007', 'PT Delta Solusi', 'Surabaya', 'Citra Dewi', 'Cloud Storage 1TB', 'Layanan Cloud', 14, 2000000, 'Selesai'),
  ('TRX-0025', '2023-09-13', 'KL-012', 'PT Anugerah Teknik', 'Surabaya', 'Citra Dewi', 'Software CRM', 'Software', 8, 17000000, 'Selesai'),
  ('TRX-0026', '2023-09-14', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Citra Dewi', 'VPN Enterprise', 'Layanan Cloud', 8, 2000000, 'Selesai'),
  ('TRX-0027', '2023-09-21', 'KL-009', 'PT Indo Perkasa', 'Jakarta', 'Andi Wijaya', 'Software CRM', 'Software', 8, 15000000, 'Selesai'),
  ('TRX-0028', '2023-10-28', 'KL-007', 'PT Delta Solusi', 'Surabaya', 'Andi Wijaya', 'Laptop Bisnis', 'Hardware', 13, 59000000, 'Selesai'),
  ('TRX-0029', '2023-10-14', 'KL-012', 'PT Anugerah Teknik', 'Surabaya', 'Fitri Handayani', 'VPN Enterprise', 'Layanan Cloud', 5, 1000000, 'Dibatalkan'),
  ('TRX-0030', '2023-10-24', 'KL-009', 'PT Indo Perkasa', 'Jakarta', 'Andi Wijaya', 'Jasa Konsultasi IT', 'Jasa', 2, 19000000, 'Selesai'),
  ('TRX-0031', '2023-02-11', 'KL-009', 'PT Indo Perkasa', 'Jakarta', 'Andi Wijaya', 'Laptop Bisnis', 'Hardware', 3, 18000000, 'Pending'),
  ('TRX-0032', '2023-04-11', 'KL-015', 'PT Harapan Bangsa', 'Palembang', 'Eko Prasetyo', 'Server Rack', 'Hardware', 19, 15000000, 'Pending'),
  ('TRX-0033', '2023-11-22', 'KL-010', 'PT Cahaya Baru', 'Denpasar', 'Eko Prasetyo', 'Jasa Konsultasi IT', 'Jasa', 9, 10000000, 'Pending'),
  ('TRX-0034', '2023-05-12', 'KL-011', 'PT Mitra Abadi', 'Balikpapan', 'Fitri Handayani', 'Jasa Implementasi', 'Jasa', 15, 3000000, 'Dibatalkan'),
  ('TRX-0035', '2023-12-19', 'KL-002', 'PT Nusantara Jaya', 'Jakarta', 'Andi Wijaya', 'Server Rack', 'Hardware', 17, 26000000, 'Selesai'),
  ('TRX-0036', '2023-12-12', 'KL-005', 'PT Global Teknindo', 'Medan', 'Budi Santoso', 'VPN Enterprise', 'Layanan Cloud', 18, 9000000, 'Selesai'),
  ('TRX-0037', '2024-01-22', 'KL-014', 'PT Mega Solusi', 'Jakarta', 'Eko Prasetyo', 'Jasa Implementasi', 'Jasa', 4, 6000000, 'Dibatalkan'),
  ('TRX-0038', '2024-05-01', 'KL-005', 'PT Global Teknindo', 'Medan', 'Citra Dewi', 'Server Rack', 'Hardware', 11, 43000000, 'Selesai'),
  ('TRX-0039', '2024-01-28', 'KL-001', 'PT Maju Bersama', 'Surabaya', 'Andi Wijaya', 'Cloud Storage 1TB', 'Layanan Cloud', 9, 3000000, 'Selesai'),
  ('TRX-0040', '2024-06-02', 'KL-012', 'PT Anugerah Teknik', 'Surabaya', 'Dian Pertiwi', 'Cloud Storage 1TB', 'Layanan Cloud', 18, 3000000, 'Dibatalkan'),
  ('TRX-0041', '2024-02-02', 'KL-014', 'PT Mega Solusi', 'Jakarta', 'Citra Dewi', 'Laptop Bisnis', 'Hardware', 14, 15000000, 'Selesai'),
  ('TRX-0042', '2024-12-02', 'KL-004', 'PT Karya Utama', 'Semarang', 'Fitri Handayani', 'Server Rack', 'Hardware', 4, 62000000, 'Selesai'),
  ('TRX-0043', '2024-03-28', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Budi Santoso', 'Cloud Storage 1TB', 'Layanan Cloud', 1, 4000000, 'Selesai'),
  ('TRX-0044', '2024-06-03', 'KL-013', 'PT Sumber Rezeki', 'Bandung', 'Fitri Handayani', 'Software CRM', 'Software', 13, 7000000, 'Pending'),
  ('TRX-0045', '2024-12-03', 'KL-005', 'PT Global Teknindo', 'Medan', 'Budi Santoso', 'Server Rack', 'Hardware', 1, 34000000, 'Selesai'),
  ('TRX-0046', '2024-04-28', 'KL-002', 'PT Nusantara Jaya', 'Jakarta', 'Citra Dewi', 'Jasa Konsultasi IT', 'Jasa', 17, 13000000, 'Selesai'),
  ('TRX-0047', '2024-09-04', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Eko Prasetyo', 'Jasa Implementasi', 'Jasa', 2, 14000000, 'Pending'),
  ('TRX-0048', '2024-04-20', 'KL-009', 'PT Indo Perkasa', 'Jakarta', 'Andi Wijaya', 'Cloud Storage 1TB', 'Layanan Cloud', 19, 7000000, 'Selesai'),
  ('TRX-0049', '2024-05-17', 'KL-015', 'PT Harapan Bangsa', 'Palembang', 'Eko Prasetyo', 'Server Rack', 'Hardware', 12, 18000000, 'Dibatalkan'),
  ('TRX-0050', '2024-11-05', 'KL-011', 'PT Mitra Abadi', 'Balikpapan', 'Andi Wijaya', 'Jasa Implementasi', 'Jasa', 17, 13000000, 'Selesai'),
  ('TRX-0051', '2024-05-18', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Budi Santoso', 'Cloud Storage 1TB', 'Layanan Cloud', 13, 10000000, 'Selesai'),
  ('TRX-0052', '2024-06-13', 'KL-009', 'PT Indo Perkasa', 'Jakarta', 'Andi Wijaya', 'Jasa Implementasi', 'Jasa', 10, 21000000, 'Selesai'),
  ('TRX-0053', '2024-06-15', 'KL-008', 'PT Cipta Mandiri', 'Yogyakarta', 'Dian Pertiwi', 'Server Rack', 'Hardware', 17, 31000000, 'Selesai'),
  ('TRX-0054', '2024-06-17', 'KL-011', 'PT Mitra Abadi', 'Balikpapan', 'Fitri Handayani', 'Jasa Konsultasi IT', 'Jasa', 3, 10000000, 'Selesai'),
  ('TRX-0055', '2024-01-07', 'KL-001', 'PT Maju Bersama', 'Surabaya', 'Budi Santoso', 'VPN Enterprise', 'Layanan Cloud', 20, 10000000, 'Selesai'),
  ('TRX-0056', '2024-07-23', 'KL-012', 'PT Anugerah Teknik', 'Surabaya', 'Dian Pertiwi', 'VPN Enterprise', 'Layanan Cloud', 13, 1000000, 'Selesai'),
  ('TRX-0057', '2024-07-25', 'KL-007', 'PT Delta Solusi', 'Surabaya', 'Budi Santoso', 'Laptop Bisnis', 'Hardware', 17, 16000000, 'Selesai'),
  ('TRX-0058', '2024-08-15', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Dian Pertiwi', 'Jasa Konsultasi IT', 'Jasa', 15, 16000000, 'Pending'),
  ('TRX-0059', '2024-06-08', 'KL-012', 'PT Anugerah Teknik', 'Surabaya', 'Dian Pertiwi', 'VPN Enterprise', 'Layanan Cloud', 9, 8000000, 'Selesai'),
  ('TRX-0060', '2024-09-08', 'KL-008', 'PT Cipta Mandiri', 'Yogyakarta', 'Andi Wijaya', 'Jasa Implementasi', 'Jasa', 8, 13000000, 'Selesai'),
  ('TRX-0061', '2024-05-09', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Budi Santoso', 'Cloud Storage 1TB', 'Layanan Cloud', 5, 7000000, 'Pending'),
  ('TRX-0062', '2024-11-09', 'KL-009', 'PT Indo Perkasa', 'Jakarta', 'Dian Pertiwi', 'Cloud Storage 1TB', 'Layanan Cloud', 2, 10000000, 'Selesai'),
  ('TRX-0063', '2024-09-28', 'KL-015', 'PT Harapan Bangsa', 'Palembang', 'Eko Prasetyo', 'Cloud Storage 1TB', 'Layanan Cloud', 16, 7000000, 'Pending'),
  ('TRX-0064', '2024-10-18', 'KL-012', 'PT Anugerah Teknik', 'Surabaya', 'Fitri Handayani', 'Server Rack', 'Hardware', 16, 44000000, 'Selesai'),
  ('TRX-0065', '2024-10-13', 'KL-006', 'PT Prima Sejahtera', 'Makassar', 'Fitri Handayani', 'Cloud Storage 1TB', 'Layanan Cloud', 6, 9000000, 'Selesai'),
  ('TRX-0066', '2024-10-13', 'KL-010', 'PT Cahaya Baru', 'Denpasar', 'Eko Prasetyo', 'Software ERP', 'Software', 3, 46000000, 'Selesai'),
  ('TRX-0067', '2024-02-11', 'KL-005', 'PT Global Teknindo', 'Medan', 'Dian Pertiwi', 'Jasa Konsultasi IT', 'Jasa', 7, 13000000, 'Selesai'),
  ('TRX-0068', '2024-11-25', 'KL-014', 'PT Mega Solusi', 'Jakarta', 'Dian Pertiwi', 'Jasa Implementasi', 'Jasa', 3, 20000000, 'Selesai'),
  ('TRX-0069', '2024-08-11', 'KL-011', 'PT Mitra Abadi', 'Balikpapan', 'Andi Wijaya', 'Software ERP', 'Software', 1, 20000000, 'Selesai'),
  ('TRX-0070', '2024-08-12', 'KL-003', 'PT Sinar Makmur', 'Bandung', 'Dian Pertiwi', 'Software CRM', 'Software', 19, 18000000, 'Selesai'),
  ('TRX-0071', '2024-06-12', 'KL-010', 'PT Cahaya Baru', 'Denpasar', 'Eko Prasetyo', 'Software CRM', 'Software', 6, 24000000, 'Selesai'),
  ('TRX-0072', '2024-12-19', 'KL-011', 'PT Mitra Abadi', 'Balikpapan', 'Dian Pertiwi', 'Cloud Storage 1TB', 'Layanan Cloud', 7, 5000000, 'Dibatalkan');

############################################### STUDY CASE
# Menampilkan table MasterKlien
select * from MasterKlien;

# Menampilkan table SalesPerson
select * from SalesPerson;

# Menampilkan table DataTransaksi
select * from DataTransaksi;

# 1.Dari database yang telah buat, tampilkan ID KLIEN, NAMA KLIEN, PRODUK, NAMA SALES, JABATAN SALES, PIC KLIEN dari PERUSAHAAN (PT) yang merupakan klien!
select distinct DataTransaksi.ID_Klien, DataTransaksi.Nama_Klien, DataTransaksi.Produk , DataTransaksi.Nama_Sales, SalesPerson.Jabatan, MasterKlien.PIC,MasterKlien.Status_Klien from DataTransaksi 
join MasterKlien on DataTransaksi.ID_Klien= MasterKlien.ID_Klien
join SalesPerson on DataTransaksi.Nama_Sales=SalesPerson.Nama_Sales where Status_Klien="Aktif";

# 2. Menambahkan kolom 
alter table DataTransaksi add Total_Transaksi;

# 3. Isi nilai Total_Transaksi dengan kali otomatis
update DataTransaksi set Total_Transaksi= Quantity * Harga_Satuan;
