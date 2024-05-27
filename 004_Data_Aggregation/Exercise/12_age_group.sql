select
    case
        when age between 11 and 20 then '[11-20]'
        when age between 21 and 30 then '[21-30]'
        when age between 31 and 40 then '[31-40]'
        when age between 41 and 50 then '[41-50]'
        when age between 51 and 60 then '[51-60]'
        else '[61+]'
    end as age_group,
    count(*)
from
    wizard_deposits
group by
    age_group
order by
    age_group asc;