create table Role (
ID tinyint primary key identity (1, 1),
Name varchar(15) unique not null
);

create table Category (
ID tinyint primary key identity (1, 1),
Name varchar(50) unique not null
);

create table User_Account (
ID int primary key identity (1, 1),
Role_ID tinyint foreign key references Role(ID) not null,
Username varchar(50) unique not null,
PasswordHash varchar(MAX) unique not null,  -- REVISIT
PasswordSalt varchar(100) unique not null  -- REVISIT
);

create table Product (
ID int primary key identity (1, 1),
Category tinyint foreign key references Category(ID) not null,
Quantity int not null,
Name varchar(50) unique not null,
Price int not null,
Description varchar(255) not null,
-- IMAGE LATER
);

create table Specification (
ID int primary key identity (1, 1),
Product_ID int foreign key references Product(ID),
Name varchar(50) unique not null,
Spec_Description varchar(255) not null
);

create table Orders (
ID int primary key identity (1, 1),
User_Account_ID int foreign key references User_Account(ID),
Date date default GETDATE()
);

create table Order_Item (
ID int primary key identity (1, 1),
Order_ID int foreign key references Orders(ID),
Product_ID int foreign key references Product(ID),
Product_QTY int not null
);