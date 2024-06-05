select
    apt.country,
    count(boo.booking_id) as booking_count
from
    apartments as apt
join
    bookings as boo
        on apt.apartment_id = boo.apartment_id
where
    boo.booked_at > '2021-05-18 07:52:09.904+03'
  and
    boo.booked_at < '2021-09-17 19:48:02.147+03'
group by
    apt.country
order by
    booking_count desc;