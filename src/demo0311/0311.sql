  create table scott.new_emp
select * from scott.emp;  -- 简单备份

select *
from scott.new_emp;

delete from scott.new_emp;

insert into  scott.new_emp
(EMPNO,ENAME,DEPTNO)
select EMPNO,ENAME,DEPTNO
from scott.emp;  -- 在新表中插入信息

select *
from scott.new_emp;

create or replace view scott.v_emp
as
  select ename,empno,job
from scott.emp
where DEPTNO=30;   -- 建立视图

select *
from scott.v_emp;