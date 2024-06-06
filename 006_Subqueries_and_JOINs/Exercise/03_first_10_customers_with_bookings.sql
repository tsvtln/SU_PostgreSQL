select
    boo.booking_id,
    boo.starts_at::date,
    boo.apartment_id,
    concat(cust.first_name, ' ', cust.last_name) as customer_name

from
    bookings as boo
right join
        customers as cust
            on boo.customer_id = cust.customer_id
order by
    customer_name
limit 10;
