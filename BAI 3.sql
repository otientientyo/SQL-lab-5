CREATE DATABASE EX3Lab5
Go
USE EX3Lab5
CREATE TABLE PhongBan( 
	MaPB varchar(7) Primary key,
	TenPB nVarchar(50)
	)
CREATE TABLE NhanVien(
	MaNV varchar(7),
	TenNV nVarchar(50),
	NgaySinh Datetime,
	SoCMND char(9),
	GioiTinh Char DEFAULT('M'),
	DiaChi Nvarchar(100)
	ngayvaolam DATETIME,
	MaPB varchar(7),
	CONSTRAINT pk_manv PRIMARY KEY (MaNV),
	CONSTRAINT chk_ngaysinh CHECK (NgaySinh <Getdate()),
	CONSTRAINT chk_SoCMND CHECK (ISNUMBERIC (SoCMND)=1),
	CONSTRAINT chk_gioitinh CHECK (GioiTinh='M' OR GioiTinh='F'),
	CONSTRAINT chk_datein CHECK (DATEDIFF(YEAR, NgaySinh,ngayvaolam)>=20),
	CONSTRAINT fk_MaPB FOREIGN KEY (MaPB) REFERENCES PhoongBan(MaPB)
	)

CREATE TABLE LuongDA(
	MaDA varchar(8),
	MaNV