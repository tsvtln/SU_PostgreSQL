select
    emp.employee_id,
    concat(first_name, ' ', last_name) as full_name,
    dep.department_id,
    dep.name
from
    employees as emp
join
    departments as dep
on
    emp.employee_id = dep.manager_id
order by
    emp.employee_id
limit 5;