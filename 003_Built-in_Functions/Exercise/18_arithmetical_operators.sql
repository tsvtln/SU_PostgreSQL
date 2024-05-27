create table bookings_calculation as
	select bookings.booked_for
from
	bookings
where
	apartment_id = 93;

alter table bookings_calculation
	add column multiplication numeric,
	add column modulo numeric;

update bookings_calculation
set
	multiplication = booked_for * 50,
	modulo = booked_for % 50;