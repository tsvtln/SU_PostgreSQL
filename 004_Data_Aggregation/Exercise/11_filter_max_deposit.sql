select
    magic_wand_creator, max(deposit_amount) as max_deposit
from
    wizard_deposits
group by
    magic_wand_creator
having
    max(deposit_amount) < 20000 or max(deposit_amount) > 40000
order by
    max_deposit desc limit 3;