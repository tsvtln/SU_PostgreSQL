update
    addresses
set
    country = CASE
        when country like 'B%' then 'Blocked'
        when country like 'T%' then 'Test'
        when country like 'P%' then 'In Progress'
        else country
end;