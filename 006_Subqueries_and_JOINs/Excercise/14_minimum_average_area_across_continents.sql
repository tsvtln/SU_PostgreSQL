-- select
--     315685.370370370370 as min_average_area
select
    min(avg_area)
from
    (select avg(countries.area_in_sq_km) as avg_area
     from countries
     group by continent_code) as min_average_area;