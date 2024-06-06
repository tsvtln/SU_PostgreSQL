select
    boo.booking_id,
    boo.apartment_id,
    cust.companion_full_name
from
    bookings as boo
join
    customers as cust
        using (customer_id)
where
    boo.apartment_id is NULL;
