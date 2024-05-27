select magic_wand_creator, min(magic_wand_size) as min_wand_size
from wizard_deposits
group by magic_wand_creator
order by min_wand_size asc
limit 5;