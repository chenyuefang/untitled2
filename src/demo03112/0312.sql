show index from scott.emp;
-- MySQL, primary key &foreign key 默认为索引

create index idx_ename on scott.emp(ENAME);

drop index idx_ename on scott.emp;

show index from db_school.student;


create index idx_password on db_csdn.user(password);

-- 查询排名前十的密码？
select password,count(password)
from db_csdn.user
group by password
order by 2 desc
limit 10 offset 0;

select email,count(email)
from db_csdn.user
group by email
order by 2 desc
limit 10 offset 0;


