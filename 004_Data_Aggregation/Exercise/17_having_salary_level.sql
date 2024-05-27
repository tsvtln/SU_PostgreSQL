select department_id, count(*) as "num_employees",
    case
        when avg(salary) > 50000 then 'Above average'
        when avg(salary) <= 50000 then 'Below average'
    end as salary_level
from employees
group by department_id having avg(salary) > 30000 order by department_id;