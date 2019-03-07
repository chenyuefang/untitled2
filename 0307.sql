
show databases;

drop database if exists  db_school;
create database db_school;

drop table if exists db_school.student;
create table db_school.student
(
  id int primary key comment  'id PK',
  -- 字段名 数据类型 【数据范围】 数据约束（可无）  注释
  sno  varchar(255) comment '学号',
  name   varchar(20) comment '学生姓名',
  age    int(2) comment '年龄',
  height double(3, 2) comment '身高 x.yz 米',
  dob    date comment '出生年月',
  departmentId int comment '院系 id'
) comment  '学生表';

drop table if exists db_school.department;
create table db_school.department(
                                   id int auto_increment primary key  comment 'id PK',
                                   title varchar(255) comment '院系名称',
                                   tel varchar(255)  comment '电话'
) comment '院系';

alter table db_school.student
  add constraint
    student_fk_departmentId
    foreign key (departmentId)
      references db_school.department(id);

select *
from  db_school.department;

desc db_school.student;

insert into db_school.student value (111 ,'001','Tom', 19,1.75,'1997-12-18',1);
insert into db_school.student value (222 ,'002','Jerry',20,1.85,'2000-3-5',2);
insert into db_school.student value (333 ,'003','Tester',20,1.70, '2000-1-1', 3);

update db_school.student
set dob = '2000-3-1'
where name = 'tom';

select *
from db_school.student;


select *
from db_school.department;


insert into db_school.department value (null, 'CS', '010-12345678');
insert into db_school.department value (null, 'SS', '010-12345679');
insert into db_school.department value (null, 'EE', '010-12345680');

select s.name,d.title
from db_school.student s
       inner join db_school.department d
                  on d.id=s.departmentId;



