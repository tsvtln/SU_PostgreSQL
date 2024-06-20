insert into
    addresses(street, town, country, account_id)
select
    username as street,
    password as town,
    ip as country,
    age as account_id
from
    accounts
where
    gender = 'F';