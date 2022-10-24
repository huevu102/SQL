--2--
create table Contacts(
    Id int primary key identity(1,1),
    Name nvarchar(100) not null,
    Address nvarchar(255) not null,
    DoB date not null
);

create table Tels(
    Id int primary key identity(1,1),
    Tel varchar(20) not null unique,
    ContactId int foreign key references Contacts(Id)
);

--3--
insert into Contacts(Name, Address, DoB)
values(N'Nguyễn Văn An', N'111 Nguyễn Trãi, Thanh Xuân, Hà Nội', '1987-11-18'),
(N'Phạm Phương Linh', N'8 Tôn Thất Thuyết, Mỹ Đình, Hà Nội', '2009-12-12'),
(N'Phạm Thị Tâm', N'3 Duy Tân, Dịch Vọng, Hà Nội', '1995-05-08');

insert into Tels(Tel, ContactId)
values('987654321', 1), ('09873452', 1), ('09832323', 1), ('09434343', 1), 
('99999999', 2), ('88888888', 2), ('06868686', 2), ('123456789', 3);

select * from Contacts;
select* from Tels;

--4--
--a
select Name from Contacts;
--b
select Tel from Tels;

--5--
--a
select Name from Contacts order by Name asc;
--b
select Tel from Tels where ContactId in
    (select Id from Contacts where Name = N'Nguyễn Văn An');
--c
select Name from Contacts where DoB = '2009-12-12';

--6--
--a
select ContactId, count(*) as TelQty from Tels group by ContactId; 
--b
select count(*) as BornIn12Qty from Contacts where DoB like '%-12-%';
--c
select Tels.Tel, Contacts.* from Contacts
    inner join Tels on Contacts.Id = Tels.ContactId;
--d
select * from Contacts where Id in
    (select ContactId from Tels where Tel = '123456789');

--7--
--a
alter table Contacts add check (DoB < getDate());
alter table Contacts drop constraint ;
--b

--c
alter table Contacts add StartContactDate date;

--8--
--a
create index IX_Name on Contacts(Name);
create index IX_Tel on Tels(Tel);