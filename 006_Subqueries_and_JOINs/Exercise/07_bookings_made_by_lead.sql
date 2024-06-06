select
    boo.apartment_id,
    boo.booked_for,
    cust.first_name,
    cust.country
--     cust.job_type
from
    bookings as boo
inner join
        customers as cust
            on boo.customer_id = cust.customer_id
where
    cust.job_type = 'Lead';