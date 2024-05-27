select department_id, sum(salary) as "Total Salary"
from employees
group by department_id
having sum(salary) < 4200
order by department_id;