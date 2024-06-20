delete from
           addresses
where
    id % 2 = 0
and
    lower(street) like '%r%';