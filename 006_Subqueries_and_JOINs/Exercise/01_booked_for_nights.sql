select
    concat(apt.address, ' ', address_2) as apartment_address,
    concat(boo.booked_for) as nights
from
    apartments as apt
join
        bookings as boo
            on
                apt.booking_id = boo.booking_id
order by
    apt.apartment_id;