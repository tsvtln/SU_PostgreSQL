select
    apt.name,
    sum(boo.booked_for)
from
    apartments as apt
join
    bookings as boo
        on boo.apartment_id = apt.apartment_id
group by apt.name
order by
    apt.name;