select
    count(*) as countries_without_mountains
from
    countries as cnt
left join
    mountains_countries as mnt_cnt
        using (country_code)
where
    mnt_cnt.mountain_id is NULL;