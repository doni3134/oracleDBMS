select employee_id, first_name || last_name as "NAME", salary, job_id, hire_date, manager_id From Employees;

select * from employees;

select * from jobs;

--p550 巩力1
select first_name || last_name as "NAME", salary, job_id as "job", salary+100 as "increased Ann_salary", salary*12+100 as "increased Salary" from employees;
--p550 巩力2
select last_name  || ':' || '1 Year Salary = $' ||salary*12 as "1 Year Salary" from employees;
--p550 巩力3
select Distinct department_id, job_id from employees;
--p551 巩力1
select last_name as "e or o Name" from employees where last_name like '%e%' and  last_name like '%o%';
--p552 巩力2
select first_name || ' ' || last_name as "Name", job_id, hire_date from employees where hire_date between '06/05/20' and '07/05/20' order by hire_Date;
--p 552 巩力3
select first_name ||' '|| last_name as Name, salary, job_id, commission_pct from employees where commission_pct is not null order by salary, commission_pct desc;
--p553 巩力1
select first_name || last_name as "Employee JOBs." from employees where last_name like '%s'; 
--p554 巩力2
select first_name || last_name as "Name", salary, salary*12 as "Annual Salary", NVL2(commission_pct, 'salary Commission', 'salary only')  from employees;
--p554 巩力3
select first_name || last_name as "Name", hire_date, TO_Char(hire_date, 'day') from employees;

