show databases;

create database dbTest_school1;

create table dbTest_school1.student
(
  sno char(20) comment '学号',
  sname varchar (20) comment '学生姓名',
  age int (2) comment '年龄',
  gender char(2) comment '性别',
  major char (20)comment '专业'
  ) comment '学生表';

insert into dbTest_school1.student value ( '18150','Jack', 19, '男','计算机');
insert into dbTest_school1.student value ('18151','Jerry', 19,'男','会计');
insert into dbTest_school1.student value ('18152','Mary',20,'女','英语');

select *
from dbTest_school1.student;

create table  dbTest_school1.course
(
  cno char(20) comment '课程号',
 cname char(20) comment '课程名称',
  score int (3)comment '学分'
  ) comment '课程表';

show full columns from db_school.course;

insert into dbTest_school1.course value ('111','数据库',1.0);
insert into dbTest_school1.course value ('222','英语',1.2);
insert into dbTest_school1.course value ('333','计算机',1.5);
select *
from dbTest_school1.course;

create table  db_school1.sc
(
  sno char(20) comment '学号',
  cno char(20)comment '课程号',
  grade int (3)comment '成绩'
  ) comment '选课表';
insert into dbTest_school1.course value ('18150','111',96);
insert into dbTest_school1.course value ('18151','222',88);
insert into dbTest_school1.course value ('18152','333',95);
select *
from dbTest_school1.course;
