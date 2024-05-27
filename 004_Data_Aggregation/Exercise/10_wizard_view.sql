create
	view view_wizard_deposits_with_expiration_date_before_1983_08_17
as
select
	concat(first_name, ' ', last_name) as wizard_name,
	deposit_start_date as start_date,
	deposit_expiration_date as expiration_date,
	deposit_amount as amount
from wizard_deposits
where deposit_expiration_date <= '1983-08-17'
group by wizard_name, deposit_start_date, deposit_expiration_date, deposit_amount
order by expiration_date