create table minions_birthdays(
	id serial primary key,
	name varchar(50),
	date_of_birth date,
	age integer,
	present varchar(100),
	party timestamptz
);
