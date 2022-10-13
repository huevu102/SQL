create table Products(
    Code int primary key,
    Name ntext,
    Description ntext,
    Price int check(Price >= 0),
    Qty int check(Qty >= 0),
    OrderCode int foreign key references Orders(Code) not null
);

create table Orders(
    Code int primary key,
    Date date check(Date <= getDate()),
    CustomerId int foreign key references Customers(Id)
);

create table Customers(
    Id int primary key,
    Name ntext,
    Address nvarchar(255),
    Tel varchar(20)
);