select deposit_group, is_deposit_expired, floor(avg(deposit_interest)) as dp
from wizard_deposits
where deposit_start_date > '1985-01-01'
group by deposit_group, is_deposit_expired
order by deposit_group desc, is_deposit_expired asc;