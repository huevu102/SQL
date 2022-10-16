create table asm9_NHACUNGCAP(
    MaNhaCC varchar(10) primary key,
    TenNhaCC nvarchar(100) not null unique,
    DiaChi nvarchar(50) not null,
    SoDT varchar(20) check(SoDT like '0%') not null unique,
    MaSoThue varchar(6) not null unique 
);

create table asm9_LOAIDICHVU(
    MaLoaiDV varchar(10) primary key,
    TenLoaiDV nvarchar(255) not null unique
);

create table asm9_MUCPHI(
    MaMP varchar(10) primary key,
    DonGia decimal (12,4) not null check(DonGia >= 0),
    MoTa ntext
);

create table asm9_DONGXE(
    DongXe varchar(20) primary key,
    HangXe varchar(20) not null,
    SoChoNgoi int not null check(SoChoNgoi >= 4)
);

create table asm9_DANGKYCUNGCAP(
    MaDKCC varchar(10) primary key,
    MaNhaCC varchar(10) not null foreign key references asm9_NHACUNGCAP(MaNhaCC),
    MaLoaiDV varchar(10) not null foreign key references asm9_LOAIDICHVU(MaLoaiDV),
    DongXe varchar(20) not null foreign key references asm9_DONGXE(DongXe),
    MaMP varchar(10) not null foreign key references asm9_MUCPHI(MaMP),
    NgayBatDauCungCap date not null,
    NgayKetThucCungCap date not null,
    SoLuongXeDangKy int not null check(SoLuongXeDangKy > 0)
);

drop table asm9_DANGKYCUNGCAP, asm9_DONGXE, asm9_MUCPHI, asm9_LOAIDICHVU, asm9_NHACUNGCAP;