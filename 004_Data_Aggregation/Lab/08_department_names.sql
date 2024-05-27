select
	employees.id,
	employees.first_name,
	employees.last_name,
	round(employees.salary, 2) as salary,
	employees.department_id,
	case
		when employees.department_id = 1 then 'Management'
		when employees.department_id = 2 then 'Kitchen Staff'
		when employees.department_id = 3 then 'Service Staff'
		else 'Other'
	end
from employees
order by employees.id;