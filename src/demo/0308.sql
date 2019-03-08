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

























