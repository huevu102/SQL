--2
create table Categories(
    CateID char(6) primary key,
    CateName nvarchar(100) not null,
    Description nvarchar(200)
);

create table Parts(
    PartID int primary key identity(1,1),
    PartName nvarchar(100) not null,
    CateID char(6) foreign key references Categories(CateID),
    Description nvarchar(1000),
    Price money not null default 0,
    Quantity int default 0,
    Warranty int default 1,
    Photo nvarchar(200) default 'photo/nophoto.png'
);

--3
insert into Categories(CateID, CateName, Description) 
values ('CAT001', N'CPU', N'New CPU'),
('CAT002', N'Mouse', N'Wireless mouse'),
('CAT003', N'Keyboard', N'Wireless keyboard');

insert into Parts(PartName, CateID, Description, Price, Quantity, Warranty, Photo) 
values ('Dell M1 CPU', 'CAT001','M1 CPU for Dell computer', '1000', 10, 12, 'photo/cpu.png'),
('Super mouse', 'CAT002','Brand new wireless mouse', '80', 50, 2, 'photo/mouse.png'),
('Rainbow keyboard', 'CAT003','7 colors keyboard', '100', 30, 5, 'photo/keyboard.png');

--4
select * from Parts where Price > 100;

--5
select * from Parts where CateID in 
(select CateID from Categories where CateName like N'%CPU%');

--6
create view v_Parts as
    select P.PartID, P.PartName, C.CateName, P.Price, P.Quantity from Parts P
	left join Categories C on P.CateID = C.CateID;

select * from v_Parts;

--7
create view v_TopParts as
    select top 5 * from Parts order by Price desc;

select * from v_TopParts;
