select
    apt.name,
    apt.country,
    boo.booked_at::date
from
    apartments as apt
left join bookings as boo
    on apt.booking_id = boo.booking_id

limit 10;