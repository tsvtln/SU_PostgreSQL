select
	concat_ws(
		' ',
		elevation,
		repeat('-', 3) || repeat('>', 2),
		peak_name
	) as "Elevation -->> Peak Name"
from
	peaks
where
	elevation >= 4884;