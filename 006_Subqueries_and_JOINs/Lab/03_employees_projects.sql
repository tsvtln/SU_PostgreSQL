select
    emp.employee_id,
    concat(emp.first_name, ' ', emp.last_name) as full_name,
    emp_p.project_id,
    pro.name as project_name
from
    employees as emp
join
    employees_projects as emp_p
        on
            emp.employee_id = emp_p.employee_id
    join projects as pro
        on
            emp_p.project_id = pro.project_id
where
    pro.project_id = 1;