show databases;

drop database if exists db_school;
create database db_school;

drop table if exists db_school.student;
create table db_school.student
(
id           int primary key comment 'id PK',
  -- 字段名 数据类型 【数据范围】 数据约束（可无）  注释
  sno          varchar(255) comment '学号',
  gender varchar(255) comment '性别',
  name         varchar(20) comment '学生姓名',
  age          int(2) comment '年龄',
  height       double(3, 2) comment '身高 x.yz 米',
  dob          date comment '出生年月',
  departmentId int comment '院系 id'
) comment '学生表';

alter table db_school.student auto_increment=100;-- 学生的序号从一百开始

drop table if exists db_school.department;
create table db_school.department
(
  id    int auto_increment primary key comment 'id PK',
  title varchar(255) comment '院系名称',
  tel   varchar(255) comment '电话'
) comment '院系';

-- 为学生表追加外键约束
alter table db_school.student
  add constraint
    student_fk_departmentId
    --  student_fk_departmentId  外键别名 表名_fk_列名
    foreign key (departmentId)
      references db_school.department (id);

     # on delete cascade; -- 级联删除
    # on delete set null ;-- 级联置空

select *
from db_school.department;

desc db_school.student; -- desc: describe

insert into db_school.student value (111, '001','male', 'Tom', 19, 1.75, '1997-12-18', 1);
insert into db_school.student value(id,sno,name,age,height,dob,departmentId) (222, '002', 'Jerry', 20, 1.85, '2000-3-5', 2);
insert into db_school.student value (333, '003', 'null','Tester', 20, 1.70, '2000-1-1', 3);

update db_school.student
set dob = '2000-3-1'
where name = 'tom';

update db_school.student
set gender='female',name='Jerry'
where id=111;

select *
from db_school.student;


select *
from db_school.department;


insert into db_school.department value (null, 'CS', '010-12345678');
insert into db_school.department value (null, 'SS', '010-12345679');
insert into db_school.department value (null, 'EE', '010-12345680');

select s.name, d.title
from db_school.student s
       inner join db_school.department d
                  on d.id = s.departmentId;


set foreign_key_checks =0;

drop table db_school.department;
drop table db_school.student;

set foreign_key_checks =1;





