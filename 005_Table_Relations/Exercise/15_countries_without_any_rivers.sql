select
    count(*) as countries_without_rivers
from
    countries
left join
    countries_rivers on countries.country_code = countries_rivers.country_code
where
    countries_rivers.country_code is null;