# 1. 返回拥有员工的部门名、部门号
select d.DEPTNO, d.DNAME
from scott.emp e
       inner join scott.dept d
                  on e.DEPTNO = d.DEPTNO
where JOB <> null;
# 2. 工资多于 scott 的员工信息
  select *
from emp
where SAL>(ENAME='scoot');
# 3. 返回员工和所属经理的姓名?
  select ENAME
from emp
where JOB=('clerk' and 'mangar');
# 4. 返回雇员的雇佣日期早于其经理雇佣日期的员工及其经理姓名
  select ENAME
from emp;
# 5. 返回员工姓名及其所在的部门名称
  select e.ENAME,d.DNAME
from emp e
inner join dept d
           on e.DEPTNO = d.DEPTNO;
# 6. 返回从事 clerk 工作的员工姓名和所在部门名称
select e.ENAME,d.DNAME
from emp e
            inner join dept d
                       on e.DEPTNO = d.DEPTNO
where JOB='clerk';
# 7. 返回部门号及其本部门的最低工资
  select d.DNAME,s.LOSAL
from dept d
inner join salgrade s
on ;

# 8. 返回销售部 sales 所有员工的姓名
  select ENAME
  from emp e
              inner join dept d
                         on e.DEPTNO = d.DEPTNO
  where DNAME='sales';
# 9. 返回工资多于平均工资的员工
  select *
from emp
where SAL>SAL/13;
# 10. 返回与 scott 从事相同工作的员工
  select ENAME
from emp
where JOB = (
  select JOB
  from emp
  where ENAME='scott'
       );
# 11. 返回比 30 部门员工平均工资高的员工姓名与工资
select ENAME SAL
from emp,salgrade
where ;
# 12. 返回工资高于30部门所有员工工资的员工信息

# 13. 返回部门号、部门名、部门所在位置及其每个部门的员工总数
  select DNAME,DEPTNO,LOC
from dept;
# 14. 返回员工的姓名、所在部门名及其工资
  select e.ENAME,d.DNAME,SAL
  from scott.emp e
              inner join scott.dept d
                         on e.DEPTNO = d.DEPTNO;
# 15. 返回雇员表中不在同一部门但是从事相同工作的员工信息
select *
from emp e
            inner join dept d
                       on e.DEPTNO = d.DEPTNO
where ;
# 16. 返回员工的详细信息，包括部门名
  select e.* ,d.DNAME
 from emp e
       inner join dept d
  on e.DEPTNO = d.DEPTNO;
# 17. 返回员工工作及其从事此工作的最低工资

# 18. 返回不同部门经理的最低工资

# 19. 计算出员工的年薪，并且以年薪排序
  select *
from emp
order by SAL*365+COMM;
# 20. 返回工资处于第 4 级别的员工的姓名
