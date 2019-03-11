create table scott.new_emp
select *
from scott.emp; -- 简单备份

select *
from scott.new_emp;

delete
from scott.new_emp;

insert into scott.new_emp
  (EMPNO, ENAME, DEPTNO)
select EMPNO, ENAME, DEPTNO
from scott.emp; -- 在新表中插入信息

select *
from scott.new_emp;

create or replace view scott.v_emp -- v_emp (虚表)安全性
as
select ename, empno, job
from scott.emp
where DEPTNO = 30; -- 建立视图 （视图：可以被存储的查询语句）

select *
from scott.v_emp;

select ENAME, DNAME
from scott.emp e
       inner join scott.dept d
                  on e.DEPTNO = d.DEPTNO
where ENAME = 'allen';

create or replace view scott.v_name
as
select e.EMPNO, e.ENAME, d.DNAME
from scott.emp e
       inner join scott.dept d
                  on e.DEPTNO = d.DEPTNO;

select *
 from scott.v_name
where ENAME='allen';
