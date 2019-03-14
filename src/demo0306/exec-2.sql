# 1. 返回拥有员工的部门名、部门号
select distinct d.DEPTNO, d.DNAME
from scott.emp e
       inner join scott.dept d
                  on e.DEPTNO = d.DEPTNO;

# 2. 工资多于 scott 的员工信息
select *
from emp
where (SAL + ifnull(COMM, 0)) > (
  select (SAL + ifnull(COMM, 0))
  from scott.emp
  where ENAME = 'scott'
);

# 3. 返回员工和所属经理的姓名?
select e1.ENAME, e2.ENAME
from scott.emp e1
       join scott.emp e2
            on e1.MGR = e2.EMPNO;

# 4. 返回雇员的雇佣日期早于其经理雇佣日期的员工及其经理姓名
select e1.HIREDATE, e2.ENAME
from scott.emp e1
       join scott.emp e2
            on e1.MGR = e2.EMPNO
where e1.HIREDATE < e2.HIREDATE;

# 5. 返回员工姓名及其所在的部门名称
select e.ENAME, d.DNAME
from emp e
       inner join dept d
                  on e.DEPTNO = d.DEPTNO;

# 6. 返回从事 clerk 工作的员工姓名和所在部门名称
select e.ENAME, d.DNAME
from emp e
       inner join dept d
                  on e.DEPTNO = d.DEPTNO
where JOB = 'clerk';

# 7. 返回部门号及其本部门的最低工资
select EMPNO, min(SAL + ifnull(COMM, 0))
from scott.emp
group by DEPTNO;

# 8. 返回销售部 sales 所有员工的姓名
select ENAME
from emp e
       inner join dept d
                  on e.DEPTNO = d.DEPTNO
where DNAME = 'sales';

# 9. 返回工资多于平均工资的员工
select *
from emp
where (SAL + ifnull(COMM, 0)) > (
  select avg(SAL + ifnull(COMM, 0))
  from scott.emp
);

# 10. 返回与 scott 从事相同工作的员工
select *
from emp
where JOB = (
  select JOB
  from emp
  where ENAME = 'scott'
);

# 11. 返回比 30 部门员工平均工资高的员工姓名与工资
select ENAME, SAL
from scott.emp
where SAL + ifnull(COMM, 0) > (
  select avg(SAL)
  from scott.emp
  where DEPTNO = 30
);



# 12. 返回工资高于30部门所有员工工资的员工信息
select *
from scott.emp
where SAL + ifnull(COMM, 0) > (
  select max(SAL + ifnull(COMM, 0))
  from scott.emp
  where DEPTNO = 30
);

# 13. 返回部门号、部门名、部门所在位置及其每个部门的员工总数
select d.DNAME, d.DEPTNO, d.LOC, count(e.ENAME)
from scott.emp e
       inner join dept d
                  on e.DEPTNO = d.DEPTNO
group by d.DEPTNO;

# 14. 返回员工的姓名、所在部门名及其工资
select e.ENAME, d.DNAME, SAL + ifnull(e.COMM, 0)
from scott.emp e
       join scott.dept d
            on e.DEPTNO = d.DEPTNO;

# 15. 返回雇员表中不在同一部门但是从事相同工作的员工信息
select *
from emp e1
        join scott.emp e2
where e1.DEPTNO <>e2.DEPTNO
and e1.JOB =e2.JOB;

# 16. 返回员工的详细信息，包括部门名
select e.*, d.DNAME
from emp e
       inner join dept d
                  on e.DEPTNO = d.DEPTNO;

# 17. 返回员工工作及其从事此工作的最低工资
select JOB,min(SAL + ifnull(COMM,0))
from scott.emp
group by JOB;

# 18. 返回不同部门经理的最低工资
select  DEPTNO, min(SAL + ifnull(COMM,0))
from emp
where  JOB='manager'
group by DEPTNO;  -- 分组检索

# 19. 计算出员工的年薪，并且以年薪排序
select(SAL +ifnull(COMM,0)) * 12
from emp
order by  1;

# 20. 返回工资处于第 4 级别的员工的姓名
select e.ENAME,s.GRAED
from scott.salgrade s
inner join scott.emp e
on e.SAL + ifnull(e.COMM,0) between  s.LOSAL and s.HISAL
where s.GRAED=4;
