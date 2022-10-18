--3--
insert into mssql_asm2_Makers(Id, Name, Address, Tel)
values(123, 'Asus', 'USA', '(+1)983232'),
(124, 'Panasonic', 'Japan', '(+81)999999'),
(125, 'Apple', 'USA', '(+1)123456');

select * from mssql_asm2_Makers;

insert into mssql_asm2_Products(Name, Description, Unit, Price, Qty, MakerId)
values(N'Máy Tính T450', N'Máy nhập cũ', N'Chiếc', 1000, 10, 123),
(N'Điện Thoại Nokia5670', N'Điện thoại đang hot', N'Chiếc', 200, 200, 123),
(N'Máy in samsung 450', N'Máy in đang loại bình', N'Chiếc', 100, 10, 123),
(N'Máy lọc không khí AS1000', N'Máy nhập mới nguyên chiếc', N'Chiếc', 1500, 20, 124),
(N'Điện Thoại IPhone11', N'Điện thoại cũ', N'Chiếc', 1000, 15, 125),
(N'Đồng Hồ Apple Watch 3', N'Đồng hồ bị xước mặt', N'Chiếc', 500, 30, 125),
(N'Máy tính Macbook', N'Máy tính mới sản xuất năm 2020', N'Chiếc', 2000, 5, 125);

select * from mssql_asm2_Products;

--4--
--a
select Name as MakerName from mssql_asm2_Makers;
--b
select Name as ProductName from mssql_asm2_Products;

--5--
--a
select Name as MakerName from mssql_asm2_Makers order by Name desc;
--b
select Name as ProductName, Price from mssql_asm2_Products order by Price desc;
--c
select * from mssql_asm2_Makers where Name = N'Asus';
--d
select Name as QtyLessThan11Product, Qty from mssql_asm2_Products where Qty < 11;
--e
select mssql_asm2_Products.Name as AsusProducts, mssql_asm2_Makers.Name as MakerName
from mssql_asm2_Products inner join mssql_asm2_Makers
on mssql_asm2_Makers.Id = mssql_asm2_Products.MakerId and mssql_asm2_Makers.Name = 'Asus';

--6--
--a
select count(Id) as NumberOfMakers from mssql_asm2_Makers;
--b
select count(Id) as NumberOfProductLines from mssql_asm2_Products;
--c
select MakerId, count(MakerId) as NumberOfProductLines
from mssql_asm2_Products group by MakerId;
--d
select sum(Qty) as TotalProductQty from mssql_asm2_Products;