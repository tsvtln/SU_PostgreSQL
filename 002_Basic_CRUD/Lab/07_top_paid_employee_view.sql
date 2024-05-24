create view my_view as select id, first_name, last_name, job_title, department_id, salary from employees where salary = (select max(salary) from employees);
select * from my_view;