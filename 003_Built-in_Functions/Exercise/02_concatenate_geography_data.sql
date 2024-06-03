create or replace view 
    view_continents_countries_currencies_details 
as select 
    concat(con.continent_name, ': ', con.continent_code) as continent_details, 
    concat(cou.country_name, ' - ', cou.capital, ' - ', cou.area_in_sq_km, ' - km2') as country_information, 
    concat(cur.description, ' (', cur.currency_code, ')') as currencies 
from 
    continents as con, 
    countries as cou, 
    currencies as cur 
where 
    con.continent_code = cou.continent_code 
and 
    cou.currency_code = cur.currency_code 
order by 
    country_information, currencies;
