drop database if exists db_b;
create database db_b;

drop table if exists db_b.student;
create table db_b.student
(
  id       int auto_increment primary key comment 'id PK',
  username varchar(255) not null comment 'username NN',
  password varchar(255) not null comment 'password NN'

) comment 'student table';

drop table if exists db_b.user;
create table db_b.user
(
  id       int auto_increment primary key comment 'id PK',
  username varchar(255) not null comment 'username NN',
  password varchar(255) not null comment 'password NN'
) comment 'user table';

drop table if exists db_b.book;
create table db_b.book
(
  id       int auto_increment primary key comment 'id PK',
  username varchar(255) not null comment 'username NN',
  password varchar(255) not null comment 'password NN',
  role     int(1)       not null default 0 comment 'role 0-student 1-admin NN'
) comment 'user table';