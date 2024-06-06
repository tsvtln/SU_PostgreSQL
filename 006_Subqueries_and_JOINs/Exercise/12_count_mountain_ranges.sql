select
    mnt_cnt.country_code,
    count(mnt.mountain_range) as mountain_range_count
from
    mountains as mnt
join
    mountains_countries as mnt_cnt
        on mnt.id = mnt_cnt.mountain_id
where mnt_cnt.country_code in ('US', 'RU', 'BG')
group by
    mnt_cnt.country_code
order by
    mountain_range_count desc;