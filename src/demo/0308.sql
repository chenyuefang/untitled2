show  full columns from db_school.student; -- 显示所有字段

show full tables from db_school; -- 显示数据库两张表

show variables like 'C%'; --  显示变量

select ENAME,HIREDATE -- 查询语句投影操作
from scott.emp;

select  distinct JOB -- distinct 去重
from emp;

select *
from emp
# where SAL>2000;
# where SAL<>3000; -- 不等于
# where SAL<>300 and JOB<> 'salesman';
where SAL<>300 or JOB<> 'salesman';

select *
from emp
where ENAME=binary 'Scott';

select JOB, ENAME,HIREDATE
from emp
# order by ENAME asc ;-- ascend   上升，升序
# order by ENAME desc ;-- descend  下降，降序
# order by ENAME;  -- 默认升序，可不写asc
# order by HIREDATE;     -- 工龄长的排前排后？
order by JOB,ENAME desc ;

select COMM
from emp
order by COMM; -- 空值认为是最小的值

select *
from emp
# limit 3 offset  0; -- offest 偏移量
 limit 3 offset  3;
# limit 0,3;

-- limit 在 order by 后面

select ENAME
from emp
# where ENAME like  'A%S';  -- 姓名以A开始以S结束   模糊查询
where ENAME  not like  'A%S';  -- 不能以A开始同时不能以S结束

select *
from emp
where ENAME like  '_COOT'; -- _表示一个字符

select *
from emp
where ENAME like  '%\_%' escape  '\\'; --  查询含有下划线的名字

update scott.emp
set ENAME = 'sco_tt' where ENAME ='scott';

select *
from emp
# where JOB='salesamn' or JOB='manager' or JOB='president';
where JOB in ('salesamn' , 'manager' ,'president');

select *
from emp
where SAL between 2000 and 3000;-- 闭区间

show tables from scott;

show full columns from emp;

select e.ename as  '员工 姓名'
from emp as e;

select *
from scott.emp
where COMM is unll;
















