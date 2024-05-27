select deposit_group, sum(deposit_interest) as deposit_interest
from wizard_deposits
group by deposit_group
order by deposit_interest desc;