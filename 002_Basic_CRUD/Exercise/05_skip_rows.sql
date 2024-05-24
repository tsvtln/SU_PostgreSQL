select id as id, concat(first_name, ' ', middle_name, ' ', last_name) as full_name, hire_date from employees order by hire_date asc offset 9;
