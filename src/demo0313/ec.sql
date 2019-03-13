show databases;

drop database if exists db_ec1;
create database db_ec1;

drop table if exists db_ec1.user;
create table db_ec1.user
(
  id       int auto_increment primary key not null comment 'id PK',
  email    varchar(255)                   not null unique comment 'email NN UN',
  password varchar(255)                   not null comment 'password NN',
  mobile   varchar(255)                   not null unique comment 'mobile NN UN'
  # productId int comment 'produet id',
  # orderId   int comment 'order id'

) comment 'user table';

drop table if exists db_ec1.user_info;
create table db_ec1.user_info
(
  id     int auto_increment primary key comment 'id PK',
  avatar varchar(255) comment 'avatar',-- 头像  'xxx.jpg'
  gender char(2) comment 'gender',
  city   varchar(255) comment 'city',
  userId int comment 'user id FK'
) comment 'user info table';

drop table if exists db_ec1.category;
create table db_ec1.category
(
  id         int auto_increment not null primary key comment 'id PK',
  title      varchar(255)       not null comment 'title NN',
  picture    varchar(255)       not null comment 'picture',
  categoryId int comment 'parent category id PK'

) comment 'category able';

drop table if exists db_ec1.product;
create table db_ec1.product
(
  id            int auto_increment primary key comment 'id PK',
  title         varchar(255)  not null comment 'title NN',
  price         decimal(8, 2) not null comment 'price NN',
  originalprice decimal(8, 2) comment 'original price',
  -- ...
  --  slidePicture text not null comment 'slide picture', -- '1.jpg  2.jpg  3.jpg' 列值不唯一 -> 定义新表 db_ec1.pictures
  -- detail picture?
  # category varchar(255) not null comment 'category NN',  -- ?
  categoryId    int comment 'category id FK'

) comment 'product table';

drop table if exists db_ec1.pictures;
create table db_ec1.pictures
(
  id        int auto_increment not null unique primary key comment 'id PK',
  title     varchar(255)       not null unique comment 'title NN UN',
  type      int(1)             not null comment 'type: 1-slide picture 2-detail oicture',
  pruductId int comment 'picture id FK'
) comment 'pictures table';

alter table db_ec1.user_info
  add constraint
    user_info_fk_userId
    foreign key (userId)
      references db_ec1.user (id);

alter table db_ec1.category
  add constraint
    category_fk_categoryId
    foreign key (categoryId)
      references db_ec1.category (id);

alter table db_ec1.product
  add constraint
    product_fk_categoryId
    foreign key (categoryId)
      references db_ec1.category (id);

alter table db_ec1.pictures
  add constraint
    pictures_fk_productId
    foreign key (pruductId)
      references db_ec1.product (id);
select *
from db_ec1.user;

select *
from db_ec1.product;
