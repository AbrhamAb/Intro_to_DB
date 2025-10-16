create database alx_book_store;

use alx_book_store;

create table Books (
    book_id int primary key auto_increment,
    title varchar(130),
    author_id int not null,
    price Double(10,2),
    published_date date,
    foreign key (author_id) references Authors(author_id)
);

create table Authors (
    author_id int primary key auto_increment,
    author_name varchar(215)
);

create table Customers (
    customer_id int primary key auto_increment,
    customer_name varchar(215),
    email varchar(255) unique,
    address text
);

create table Orders (
    order_id int primary key auto_increment,
    customer_id int not null,
    order_date date,
    foreign key (customer_id) references Customers(customer_id)
);

create table Order_Details (
    orderdetailid int primary key auto_increment,
    order_id int not null,
    book_id int not null,
    quantity Double(10,2),
);