-- select 10
select
    count(*)
from
    bookings as boo
join
    customers as cust
        on cust.customer_id = boo.customer_id
where
    cust.last_name = 'Hahn';