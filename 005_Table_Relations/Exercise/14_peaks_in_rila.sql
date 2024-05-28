select
    mountains.mountain_range,
    peaks.peak_name,
    peaks.elevation
from
    mountains
join
    peaks on mountains.id = peaks.mountain_id
where
    mountains.mountain_range = 'Rila'
order by
    peaks.elevation desc;