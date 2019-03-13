/*
db_school
department
id ,title, tel           mobile
1.CS,  010-55678912 ， 186123789   不满足第一范式

student
id, sno, name, gender, age, deptId（FK）
1, null, Tom,  male,   18,  1
2, 002, Jerry, female, 18,  1
3, null, Tom,  male,   18,  1
*/

-- 电商网站

show databases;

drop database if exists db_ec;
create database db_ec;

drop table if exists db_ec.user;
create table db_ec.user
(
  id        int auto_increment primary key not null comment 'id PK',
  email     varchar(255)                   not null comment '邮箱',
  password  varchar(255)                   not null comment '密码',
  tel       int(20)                        not null comment '电话',
  uname     varchar(20) comment '昵称',
  productId int comment 'produet id',
  orderId   int comment 'order id'

) comment 'user table';

drop table if exists db_ec.product;
create table db_ec.product
(
  id       int auto_increment primary key not null comment 'id PK',
  pname    varchar(20)                    not null comment '商品名称',
  price    int(20)                        not null comment '价格',
  loc      varchar(255)                   not null comment '出产地',
  discount double comment '折扣'
) comment 'product table';

drop table if exists db_ec.order;
create table db_ec.order
(
  id      int auto_increment primary key not null comment 'id PK',
  paytype varchar(255)                   not null comment '支付方式',
  massage varchar(255)                   not null comment '物流信息',
  address varchar(255)                   not null comment '送货地址',
  time    varchar(255)                   not null comment '下单时间'
) comment 'order table';


-- 为user table追加外键约束
alter table db_ec.user

  add constraint

    student_fk_productId
    foreign key (productId)
      references db_ec.product (id);

-- 为追加外键约束
alter table db_ec.user
  add constraint
    student_fk_orderId
    foreign key (orderId)
      references db_ec.order (id);

insert into db_ec.user value (01, '123@qq.com', '123', 010 - 12345678, 'Tom', 1, 001);
insert into db_ec.user value (02, '456@qq.com', '456', 010 - 45678912, 'Jerry', 2, 002);

insert into db_ec.product value (1, 'TOMFORD #80号', 355, '欧美', '0.3');
insert into db_ec.product value (2, 'Chanel 5号', 765, '法国', '0.2');

insert into db_ec.order value (001, '支付宝', '已发货', '天津市西青区', '10:00');
insert into db_ec.order value (002, '微信', '开始揽件', '天津市北辰区', '12:45');

select *
from db_ec.user;

select *
from db_ec.product;

select *
from db_ec.order;






