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
where ENAME = 'allen';

select *
from scott.emp
where SAL > (
  select SAL
  from scott.emp
  where ENAME = 'scott'
);--  sub query （非相关）子查询  子句可单独执行

start transaction;-- DML （开启一个事务）

delete
from scott.emp
where ENAME = 'allen';

select *
from scott.emp;

-- 结束事务
rollback; -- 回滚
commit;
-- 提交 不会恢复

-- DDL
create table scott.test
(
  id int
);-- commit（隐式结束一个事务）


start transaction;-- DML （开启一个事务）
delete
from scott.emp
where ENAME = 'jonse';

savepoint a; -- 保留点

delete
from scott.emp
where ENAME = 'martin';

update scott.emp
set SAL=2000
where ENAME = 'martin';

savepoint b;

select *
from scott.emp;

rollback to a; -- 没有结束事务的功能
rollback to b; -- 回到当前保留点的位置

select avg(SAL)
from scott.emp;

select sum(SAL)
from scott.emp;

select min(SAL),max(SAL)
from scott.emp;

select count(SAL)
from scott.emp;

select count(COMM)
from scott.emp;

select min(ENAME)
from scott.emp;

select sum(ENAME)
from scott.emp;-- 无意义

select DEPTNO,avg(SAL)
from scott.emp
group by DEPTNO;-- 分组查询，按部门编号

select JOB,max(HIREDATE)
from scott.emp
group by JOB-- 按照工种来查询最大的雇佣日期和工种
having JOB in ('clerk','manager');  -- 组检索 /where 行检索 / 投影  列检索






