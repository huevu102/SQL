--2--
create table mssql_asm2_Makers(
    Id int primary key,
    Name varchar(20) not null unique,
    Address varchar(20) not null,
    Tel varchar(20) not null unique
);

create table mssql_asm2_Products(
    Id int primary key identity(1,1),
    Name nvarchar(100) not null unique,
    Description ntext,
    Unit nvarchar(20) not null check(Unit in (N'Chiếc',N'Cặp',N'Bộ')),
    Price decimal(16,0) not null check(Price >= 0),
    Qty int not null check(Qty >= 0),
    MakerId int not null foreign key references mssql_asm2_Makers(Id)
);

drop table mssql_asm2_Products, mssql_asm2_Makers;