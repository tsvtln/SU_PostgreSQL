select department_id, count(salary) as "employee_count" from employees group by department_id order by department_id;