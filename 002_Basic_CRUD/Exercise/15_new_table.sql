create table company_chart as select concat(first_name, ' ', last_name) as full_name, job_title, department_id, manager_id from employees;