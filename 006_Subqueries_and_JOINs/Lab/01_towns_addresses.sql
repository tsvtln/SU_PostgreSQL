select
    adr.town_id,
    town.name as town_name,
    adr.address_text
from
    addresses as adr
join
    towns as town
    on adr.town_id = town.town_id
where
    town.name in (
                    'San Francisco',
                    'Sofia',
                    'Carnation'
                 )
order by
    town_id, address_id;