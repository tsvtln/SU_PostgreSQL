select
    cnt.country_name,
    rvs.river_name
from
    countries as cnt
join
    continents as cont
        using (continent_code)
    left join
        countries_rivers as cnt_rvs
            using (country_code)
        left join
            rivers as rvs
                on rvs.id = cnt_rvs.river_id
where
    cont.continent_name = 'Africa'
order by
    cnt.country_name
limit 5;