-- Quantun X Database
# I P N
# C E C y T No.9
/*
 * Maldonado Soriano Paulina Marian
 * Perez Gaspar Yael Emanuel
 * Sanchez Garcia Miguel Alexander
 * Zamora Jimenez Gerardo Miguel
 * Zarza Flores Diego Israel
 */

drop database if exists Quantum_XDB;
create database Quantum_XDB;
use Quantum_XDB;

-- Users´s Table
create table users(
id_user nvarchar(25) primary key,
user_pass nvarchar(30),
user_name nvarchar(20),
user_lastname nvarchar(20),
email nvarchar(60),
rol nvarchar(15));

-- Admin´s Table
create table administrator(
id_admin int auto_increment primary key,
id_user nvarchar(25),
foreign key(id_user) references users(id_user));

-- Post Category Table
create table category(
id_category int auto_increment primary key,
category_name nvarchar(20));

-- Post Table
create table post(
id_post int auto_increment primary key,
post_content nvarchar(2000),
post_date date,
approved int,
id_user nvarchar(25),
id_category int,
id_admin int,
foreign key(id_user) references users(id_user),
foreign key(id_category) references category(id_category),
foreign key(id_admin) references administrator(id_admin));

-- Reference Table
create table post_reference(
id_reference int auto_increment primary key,
link nvarchar(2000),
id_post int,
foreign key(id_post) references post(id_post) on delete cascade);

-- Likes & Dislikes Tables
create table likes(
id_user nvarchar(25),
id_post int,
foreign key(id_user) references users(id_user),
foreign key(id_post) references post(id_post)on delete cascade);

create table dislikes(
id_user nvarchar(25),
id_post int,
foreign key(id_user) references users(id_user),
foreign key(id_post) references post(id_post)on delete cascade);

insert into category(category_name) values
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology'),
('History'),
('Programming');

select*from users;	
select*from administrator;
select*from category;
select*from post;
select*from post_reference;





