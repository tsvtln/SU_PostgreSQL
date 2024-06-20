select
    username,
    gender,
    age
from
    accounts as acc
where
    acc.age >= 18
and
    length(acc.username) > 9
order by
    acc.age desc,
    acc.username;