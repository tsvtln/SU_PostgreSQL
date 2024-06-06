select
    boo.booking_id,
    apt.name as apartment_owner,
    apt.apartment_id,
    concat(cust.first_name, ' ', cust.last_name) as customer_name
from
    bookings as boo
    full join
        apartments as apt
            on boo.booking_id = apt.booking_id
        full join
            customers as cust
                on boo.customer_id = cust.customer_id
order by
    booking_id, apartment_owner, customer_name;
