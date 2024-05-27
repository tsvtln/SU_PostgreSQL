select
	left(first_name, 2)
as
	initials,
	count('initials') as "user_count"
from
	users
group by initials
order by user_count desc, initials asc;