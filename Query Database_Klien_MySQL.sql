################################### BUILT DATABASE

create database kliensevima; #running row 3 utk memulai database
use kliensevima; #memanggil file database (jika sudah mulai membuatdatabase, cukup running ini saja untuk menampilkan output)

create table MasterKlien(
ID_Klien varchar(10) not null,
Nama_Klien varchar (50) not null,
PIC varchar (50) not null,
Status_Klien varchar (10) not null,
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
ID_Klien varchar(10) not null,
Nama_Klien varchar (50) not null,
Produk varchar(50) not null,
Nama_Sales varchar (50) not null,
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
("TRX-0001","KL-002","PT Nusantara Jaya","Jasa Implementasi","Andi Wijaya"),
("TRX-0002","KL-007","PT Delta Solusi","Software ERP","Andi Wijaya"),
("TRX-0003","KL-004","PT Karya Utama","Cloud Storage 1TB","Fitri Handayani"),
("TRX-0004","KL-005","PT Global Teknindo","Server Rack","Budi Santoso"),
("TRX-0005","KL-006","PT Prima Sejahtera","Jasa Implementasi","Eko Prasetyo"),
("TRX-0006","KL-005","PT Global Teknindo","Jasa Konsultasi IT","Fitri Handayani"),
("TRX-0007","KL-014","PT Mega Solusi","Software CRM","Budi Santoso"),
("TRX-0008","KL-006","PT Prima Sejahtera","Jasa Implementasi","Budi Santoso"),
("TRX-0009","KL-007","PT Delta Solusi","Server Rack","Citra Dewi"),
("TRX-0010","KL-002","PT Nusantara Jaya","Jasa Konsultasi IT","Budi Santoso"),
("TRX-0011","KL-003","PT Sinar Makmur","Jasa Implementasi","Budi Santoso"),
("TRX-0012","KL-008","PT Cipta Mandiri","Software ERP","Andi Wijaya"),
("TRX-0013","KL-007","PT Delta Solusi","VPN Enterprise","Dian Pertiwi"),
("TRX-0014","KL-005","PT Global Teknindo","Jasa Konsultasi IT","Fitri Handayani"),
("TRX-0015","KL-015","PT Harapan Bangsa","Jasa Implementasi","Fitri Handayani"),
("TRX-0016","KL-004","PT Karya Utama","Jasa Konsultasi IT","Budi Santoso"),
("TRX-0017","KL-001","PT Maju Bersama","Jasa Konsultasi IT","Andi Wijaya"),
("TRX-0018","KL-012","PT Anugerah Teknik","Software CRM","Dian Pertiwi"),
("TRX-0019","KL-005","PT Global Teknindo","Cloud Storage 1TB","Eko Prasetyo"),
("TRX-0020","KL-011","PT Mitra Abadi","VPN Enterprise","Citra Dewi"),
("TRX-0021","KL-001","PT Maju Bersama","Server Rack","Eko Prasetyo"),
("TRX-0022","KL-015","PT Harapan Bangsa","Jasa Konsultasi IT","Andi Wijaya"),
("TRX-0023","KL-003","PT Sinar Makmur","VPN Enterprise","Fitri Handayani"),
("TRX-0024","KL-007","PT Delta Solusi","Cloud Storage 1TB","Citra Dewi"),
("TRX-0025","KL-012","PT Anugerah Teknik","Software CRM","Citra Dewi"),
("TRX-0026","KL-003","PT Sinar Makmur","VPN Enterprise","Citra Dewi"),
("TRX-0027","KL-009","PT Indo Perkasa","Software CRM","Andi Wijaya"),
("TRX-0028","KL-007","PT Delta Solusi","Laptop Bisnis","Andi Wijaya"),
("TRX-0029","KL-012","PT Anugerah Teknik","VPN Enterprise","Fitri Handayani"),
("TRX-0030","KL-009","PT Indo Perkasa","Jasa Konsultasi IT","Andi Wijaya"),
("TRX-0031","KL-009","PT Indo Perkasa","Laptop Bisnis","Andi Wijaya"),
("TRX-0032","KL-015","PT Harapan Bangsa","Server Rack","Eko Prasetyo"),
("TRX-0033","KL-010","PT Cahaya Baru","Jasa Konsultasi IT","Eko Prasetyo"),
("TRX-0034","KL-011","PT Mitra Abadi","Jasa Implementasi","Fitri Handayani"),
("TRX-0035","KL-002","PT Nusantara Jaya","Server Rack","Andi Wijaya"),
("TRX-0036","KL-005","PT Global Teknindo","VPN Enterprise","Budi Santoso"),
("TRX-0037","KL-014","PT Mega Solusi","Jasa Implementasi","Eko Prasetyo"),
("TRX-0038","KL-005","PT Global Teknindo","Server Rack","Citra Dewi"),
("TRX-0039","KL-001","PT Maju Bersama","Cloud Storage 1TB","Andi Wijaya"),
("TRX-0040","KL-012","PT Anugerah Teknik","Cloud Storage 1TB","Dian Pertiwi"),
("TRX-0041","KL-014","PT Mega Solusi","Laptop Bisnis","Citra Dewi"),
("TRX-0042","KL-004","PT Karya Utama","Server Rack","Fitri Handayani"),
("TRX-0043","KL-003","PT Sinar Makmur","Cloud Storage 1TB","Budi Santoso"),
("TRX-0044","KL-013","PT Sumber Rezeki","Software CRM","Fitri Handayani"),
("TRX-0045","KL-005","PT Global Teknindo","Server Rack","Budi Santoso"),
("TRX-0046","KL-002","PT Nusantara Jaya","Jasa Konsultasi IT","Citra Dewi"),
("TRX-0047","KL-003","PT Sinar Makmur","Jasa Implementasi","Eko Prasetyo"),
("TRX-0048","KL-009","PT Indo Perkasa","Cloud Storage 1TB","Andi Wijaya"),
("TRX-0049","KL-015","PT Harapan Bangsa","Server Rack","Eko Prasetyo"),
("TRX-0050","KL-011","PT Mitra Abadi","Jasa Implementasi","Andi Wijaya"),
("TRX-0051","KL-003","PT Sinar Makmur","Cloud Storage 1TB","Budi Santoso"),
("TRX-0052","KL-009","PT Indo Perkasa","Jasa Implementasi","Andi Wijaya"),
("TRX-0053","KL-008","PT Cipta Mandiri","Server Rack","Dian Pertiwi"),
("TRX-0054","KL-011","PT Mitra Abadi","Jasa Konsultasi IT","Fitri Handayani"),
("TRX-0055","KL-001","PT Maju Bersama","VPN Enterprise","Budi Santoso"),
("TRX-0056","KL-012","PT Anugerah Teknik","VPN Enterprise","Dian Pertiwi"),
("TRX-0057","KL-007","PT Delta Solusi","Laptop Bisnis","Budi Santoso"),
("TRX-0058","KL-003","PT Sinar Makmur","Jasa Konsultasi IT","Dian Pertiwi"),
("TRX-0059","KL-012","PT Anugerah Teknik","VPN Enterprise","Dian Pertiwi"),
("TRX-0060","KL-008","PT Cipta Mandiri","Jasa Implementasi","Andi Wijaya"),
("TRX-0061","KL-003","PT Sinar Makmur","Cloud Storage 1TB","Budi Santoso"),
("TRX-0062","KL-009","PT Indo Perkasa","Cloud Storage 1TB","Dian Pertiwi"),
("TRX-0063","KL-015","PT Harapan Bangsa","Cloud Storage 1TB","Eko Prasetyo"),
("TRX-0064","KL-012","PT Anugerah Teknik","Server Rack","Fitri Handayani"),
("TRX-0065","KL-006","PT Prima Sejahtera","Cloud Storage 1TB","Fitri Handayani"),
("TRX-0066","KL-010","PT Cahaya Baru","Software ERP","Eko Prasetyo"),
("TRX-0067","KL-005","PT Global Teknindo","Jasa Konsultasi IT","Dian Pertiwi"),
("TRX-0068","KL-014","PT Mega Solusi","Jasa Implementasi","Dian Pertiwi"),
("TRX-0069","KL-011","PT Mitra Abadi","Software ERP","Andi Wijaya"),
("TRX-0070","KL-003","PT Sinar Makmur","Software CRM","Dian Pertiwi"),
("TRX-0071","KL-010","PT Cahaya Baru","Software CRM","Eko Prasetyo"),
("TRX-0072","KL-011","PT Mitra Abadi","Cloud Storage 1TB","Dian Pertiwi");


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
