select concat(number, ' ', street) as address, city_id
from addresses where city_id > 0
and city_id % 2 = 0 order by city_id asc;