REM   Script: Session 02
REM   1st practical

create table emp(  
    empno number,  
    empname varchar2(10),  
    job varchar2(10),  
    mgr varchar2(10),  
    salary number  
)  
;

alter table emp 
add comission number;

insert into emp(empno,empname,job,mgr,salary,comission)VALUES (1,'aliya','doctor',5,300,1200);

insert into emp(empno,empname,job,mgr,salary,comission)VALUES (2,'harshita','engineer',5,400,1300);

insert into emp(empno,empname,job,mgr,salary,comission)VALUES (4,'alex','engineer',5,600,1000);

insert into emp(empno,empname,job,mgr,salary,comission)VALUES (3,'jonah','architect',5,500,1500);

insert into emp(empno,empname,job,mgr,salary,comission)VALUES (5,'anmol','marketing',5,1700,800);

update emp  
set job='trainee'  
where empno=3;

alter table emp  
rename column mgr to mgrno;

delete from emp  
where empno=5;

create table dept(  
  deptno number,  
  deptname varchar2(10),  
  deptloc varchar2(10)  
);

alter table dept  
add designation varchar2(10);

insert into dept(deptno,deptname,deptloc)VALUES(9,'heritage','faridabad');

insert into dept(deptno,deptname,deptloc)VALUES(10,'managing','Gurugram');

insert into dept(deptno,deptname,deptloc)VALUES(11,'marketing','rewari');

select deptname  
from dept;

update dept  
set designation='accountant'  
where deptno=9;

delete from dept  
where deptname='heritage';

create table customer(  
    custno number primary key,  
    custname varchar2(10) not null,  
    age number not null,  
    product varchar2(10) not null,  
    price number not null  
);

insert into customer(custno,custname,age,product,price)VALUES(1,'Harshita',18,'',200);

alter table customer  
add constraint unique_name unique(custname);

create table emp2(  
    empid number,  
    age number,  
    salary number  
);

create table emp5(  
    empid number,  
    empname varchar2(10), 
    age number,  
    salary number);

insert into emp5(empid,empname,salary,age)VALUES(1,'Ram',10000,21);

insert into emp5(empid,empname,salary,age)VALUES(2,'Shyam',8000, 26);

insert into emp5(empid,empname,salary,age)VALUES(3,'Ghanshyam',8000,26);

insert into emp5(empid,empname,salary,age)VALUES(4,'Hari',28000,32);

insert into emp5(empid,empname,salary,age)VALUES(5,'Gauri',11000,22);

insert into emp5(empid,empname,salary,age)VALUES(6,'kashish',12000,23);

insert into emp5(empid,empname,salary,age)VALUES(7,'Harshita',35000,24);

select count(*)  
from emp5;

select max(age)  
from emp5;

select min(salary)  
from emp5;

select sum(age)  
from emp5;

select avg(salary)  
from emp5;

select salary from emp5  
order by salary;

select salary from emp5 
order by salary desc;

select empname,salary from emp5 
where age<29 and salary<10000;

