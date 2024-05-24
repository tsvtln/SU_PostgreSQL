create view view_addresses as select
	concat(e.first_name, ' ', e.last_name) as full_name, e.department_id,
	concat(a.number, ' ', a.street) as address from employees as e, addresses as a
	where a.id = e.address_id
	order by address;