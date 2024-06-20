select
    coalesce(left(description, 10) || '...', '...') as summary,
    to_char(capture_date, 'DD.MM HH24:MI') as date
from
    photos
where
    extract(day from capture_date) = 10
order by
    capture_date desc;