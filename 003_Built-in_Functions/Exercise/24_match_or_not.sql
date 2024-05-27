select
	companion_full_name,
	email
from
	users
where
	lower(companion_full_name) like '%and%' and email not like '%@gmail';