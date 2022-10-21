insert into asm9_NHACUNGCAP(MaNhaCC, TenNhaCC, DiaChi, SoDT, MaSoThue)
values('NCC001', N'Cty TNHH Toàn Phát', N'Hải Châu', '05113999888', 568941),
('NCC002', N'Cty Cổ phần Đông Du', N'Liên Chiểu', '05113999889', 456789),
('NCC003', N'Ông Nguyễn Văn A', N'Hoà Thuận', '05113999890', 321456),
('NCC004', N'Cty Cổ phẩn Toàn Cầu Xanh', N'Hải Châu', '05113658945', 513364),
('NCC005', N'Cty TNHH AMA', N'Thanh Khê', '05113875466', 546546),
('NCC006', N'Bà Trần Thị Bích Vân', N'Liên Chiểu', '05113587469', 524545),
('NCC007', N'Cty TNHH Phan Thành', N'Thanh Khê', '05113987456', 113021),
('NCC008', N'Ông Phan Đình Nam', N'Hoà Thuận', '05113532456', 121230),
('NCC009', N'Tập đoàn Đông Nam Á', N'Liên Chiểu', '05113987121', 533654),
('NCC010', N'Cty Cổ phần Rạng Đông', N'Liên Chiểu', '05113569654', 187864);

select * from asm9_NHACUNGCAP;

insert into asm9_LOAIDICHVU(MaLoaiDV, TenLoaiDV)
values ('DV01', N'Dịch vụ xe taxi'),
('DV02', N'Dịch vụ xe bus công cộng theo tuyến cố định'),
('DV03', N'Dịch vụ xe cho thuê theo hợp đồng');

select * from asm9_LOAIDICHVU;

insert into asm9_MUCPHI(MaMP, DonGia, MoTa)
values ('MP01', 10, N'Áp dụng từ 1/2015'),
('MP02', 15, N'Áp dụng từ 2/2015'),
('MP03', 20, N'Áp dụng từ 1/2010'),
('MP04', 25, N'Áp dụng từ 2/2011');

select * from asm9_MUCPHI;

insert into asm9_DONGXE(DongXe, HangXe, SoChoNgoi)
values ('Hiace', 'Toyota', 16),
('Vios', 'Toyota', 5),
('Escape', 'Ford', 5),
('Cerato', 'KIA', 7),
('Forte', 'KIA', 5),
('Starex', 'Huyndai', 7),
('Grand-i10', 'Huyndai', 7);

select * from asm9_DONGXE;

insert into asm9_DANGKYCUNGCAP(MaDKCC, MaNhaCC, MaLoaiDV, DongXe, MaMP, NgayBatDauCungCap, NgayKetThucCungCap, SoLuongXeDangKy)
values ('DK001', 'NCC001', 'DV01', 'Hiace', 'MP01', '2015-11-20', '2016-11-20', 4),
('DK002', 'NCC002', 'DV02', 'Vios', 'MP02', '2015-11-20', '2017-11-20', 3),
('DK003', 'NCC003', 'DV03', 'Escape', 'MP03', '2017-11-20', '2018-11-20', 5),
('DK004', 'NCC006', 'DV01', 'Cerato', 'MP04', '2015-11-20', '2019-11-20', 7),
('DK005', 'NCC002', 'DV02', 'Forte', 'MP03', '2019-11-20', '2020-11-20', 1),
('DK006', 'NCC004', 'DV03', 'Starex', 'MP04', '2016-11-10', '2021-11-20', 2),
('DK007', 'NCC005', 'DV01', 'Cerato', 'MP03', '2015-11-30', '2016-01-25', 8),
('DK008', 'NCC006', 'DV01', 'Vios', 'MP02', '2016-02-28', '2016-08-15', 9),
('DK009', 'NCC005', 'DV03', 'Grand-i10', 'MP02', '2016-04-27', '2017-04-30', 10),
('DK010', 'NCC006', 'DV01', 'Forte', 'MP02', '2015-11-21', '2016-02-22', 4),
('DK011', 'NCC007', 'DV01', 'Forte', 'MP01', '2016-12-25', '2017-02-20', 5),
('DK012', 'NCC007', 'DV03', 'Cerato', 'MP01', '2016-04-14', '2017-12-20', 6),
('DK013', 'NCC003', 'DV02', 'Cerato', 'MP01', '2015-12-21', '2016-12-21', 8),
('DK014', 'NCC008', 'DV02', 'Cerato', 'MP01', '2016-05-20', '2016-12-30', 1),
('DK015', 'NCC003', 'DV01', 'Hiace', 'MP02', '2018-04-24', '2019-11-20', 6),
('DK016', 'NCC001', 'DV03', 'Grand-i10', 'MP02', '2016-06-22', '2016-12-21', 8),
('DK017', 'NCC002', 'DV03', 'Cerato', 'MP03', '2016-09-30', '2019-09-30', 4),
('DK018', 'NCC008', 'DV03', 'Escape', 'MP04', '2017-12-13', '2018-09-30', 2),
('DK019', 'NCC003', 'DV03', 'Escape', 'MP03', '2016-01-24', '2016-12-30', 8),
('DK020', 'NCC002', 'DV03', 'Cerato', 'MP04', '2016-05-03', '2017-10-21', 7),
('DK021', 'NCC006', 'DV01', 'Forte', 'MP02', '2015-01-30', '2016-12-30', 9),
('DK022', 'NCC002', 'DV02', 'Cerato', 'MP04', '2016-07-25', '2017-12-30', 6),
('DK023', 'NCC002', 'DV01', 'Forte', 'MP03', '2017-11-30', '2018-05-20', 5),
('DK024', 'NCC003', 'DV03', 'Forte', 'MP04', '2017-12-23', '2019-11-30', 8),
('DK025', 'NCC003', 'DV03', 'Hiace', 'MP02', '2016-08-24', '2017-10-25', 1);

select * from asm9_DANGKYCUNGCAP;



--TRUY VẤN--

--3--
select DongXe from asm9_DONGXE where SoChoNgoi > 5;

--4--
select distinct NCC.MaNhaCC, NCC.TenNhaCC, NCC.DiaChi, NCC.SoDT, NCC.MaSoThue from asm9_NHACUNGCAP NCC
	inner join asm9_DANGKYCUNGCAP DKCC on DKCC.MaNhaCC = NCC.MaNhaCC
	inner join asm9_DONGXE DX on DX.DongXe = DKCC.DongXe
	inner join asm9_MUCPHI MP on MP.MaMP = DKCC.MaMP
	where (DX.HangXe = 'Toyota' AND MP.DonGia = 15) OR (DX.HangXe = 'KIA' AND MP.DonGia = 20);

--5--
select * from asm9_NHACUNGCAP order by TenNhaCC asc, MaSoThue desc;

--6--
select NCC.TenNhaCC, count(DKCC.MaDKCC) as QtyDKCC from asm9_DANGKYCUNGCAP DKCC
	inner join asm9_NHACUNGCAP NCC on DKCC.MaNhaCC = NCC.MaNhaCC
	where DKCC.NgayBatDauCungCap = '2015-11-20'
	group by NCC.TenNhaCC;

--7--
select distinct HangXe from asm9_DONGXE;

--8--
select DKCC.MaDKCC, NCC.MaNhaCC, NCC.TenNhaCC, NCC.DiaChi, NCC.MaSoThue, DV.TenLoaiDV, MP.DonGia, 
	DX.HangXe, DKCC.NgayBatDauCungCap, DKCC.NgayKetThucCungCap from asm9_DANGKYCUNGCAP DKCC
	full join asm9_NHACUNGCAP NCC on DKCC.MaNhaCC = NCC.MaNhaCC
	full join asm9_DONGXE DX on DX.DongXe = DKCC.DongXe
	full join asm9_MUCPHI MP on MP.MaMP = DKCC.MaMP
	full join asm9_LOAIDICHVU DV on DV.MaLoaiDV = DKCC.MaLoaiDV;

--9--
select distinct NCC.MaNhaCC, NCC.TenNhaCC, NCC.DiaChi, NCC.SoDT, NCC.MaSoThue
	from asm9_NHACUNGCAP NCC
	inner join asm9_DANGKYCUNGCAP DKCC on DKCC.MaNhaCC = NCC.MaNhaCC
	where DKCC.DongXe = 'Hiace' OR  DKCC.DongXe ='Cerato';

--10--
select distinct NCC.MaNhaCC, NCC.TenNhaCC, NCC.DiaChi, NCC.SoDT, NCC.MaSoThue
	from asm9_NHACUNGCAP NCC
	full join asm9_DANGKYCUNGCAP DKCC on DKCC.MaNhaCC = NCC.MaNhaCC
	where DKCC.MaNhaCC is null;
