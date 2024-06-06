select
    mnt_cnt.country_code,
    mnt.mountain_range,
    pk.peak_name,
    pk.elevation
from
    mountains_countries as mnt_cnt
    join
        mountains as mnt
            on mnt.id = mnt_cnt.mountain_id
        join peaks as pk
            on pk.mountain_id = mnt.id
where
    pk.elevation > 2835 and mnt_cnt.country_code = 'BG'
order by
    elevation desc;