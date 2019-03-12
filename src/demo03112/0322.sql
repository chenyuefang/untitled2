drop database if exists db_student;
create database db_student;

drop table if exists db_student.management;
create table db_student.management(
  id int auto_increment primary key  comment 'id PK',
  user varchar(255) comment '用户名',
  password int(20) comment '密码',
  studentId int comment '学生 id',
  activityId int comment '活动id'
) comment '信息管理表';

drop table if exists db_student.student;
create table db_student.student(
  id int auto_increment primary key  comment 'id PK',
  sno          varchar(255) comment '学号',
  gender varchar(255) comment '性别',
  name         varchar(20) comment '学生姓名',
  activityId int comment '活动id'
) comment '学生信息表';

drop table if exists db_student.activity;
create table db_student.activity(
  id int auto_increment primary key  comment 'id PK',
  acname varchar(255) comment '活动名称'

) comment '活动信息表';

-- 为信息管理表追加外键约束
alter table db_student.management
  add constraint
    student_fk_stuedntId
    foreign key (studentId)
      references db_student.student(id);

-- 为信息管理表追加外键约束
alter table db_student.management
  add constraint
    student_fk_activityId
    foreign key (activityId)
      references db_student.activity(id);

-- 为学生信息表追加外键约束
alter table db_student.student
  add constraint
    student_fk_activityId
    foreign key (activityId)
      references db_student.activity(id);

desc db_student.student;
desc db_student.activity;

#insert into db_student.student value (001,'1850','male','Tom',1);
#insert into db_student.student value (002,'1858','female','Mary',3);
#insert into db_student.student value (003,'1850','male','Tom',1);

#insert into db_student.activity value (1,'踏青');
#insert into db_student.activity value (2,'植树');
#insert into db_student.activity value (3,'登山');

select *
from db_student.student;

select *
from db_student.activity;

