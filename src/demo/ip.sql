drop database if exists db_ip;

create database db_ip;

drop table if exists db_ip.ip;

create table db_ip.ip(
  id  int auto_increment primary key comment 'id PK',
    min varchar(15) not null comment 'min id NN',
    max varchar(15) not null comment 'max id NN',
    loc varchar(15) not null comment 'loc id NN'
);

select *
from db_ip.ip;