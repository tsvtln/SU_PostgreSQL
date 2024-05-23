-- CREATE DATABASE gamebar;

create table employees(
	id serial primary key NOT NULL,
	first_name varchar(30),
	last_name varchar(50),
	hiring_date DATE,
	salary numeric(10, 2),
	devices_number integer
);
create table departments(
	id serial primary key not null,
	name varchar(50),
	code char(3),
	description text
);
create table issues(
	id serial primary key unique,
	description varchar(150),
	date date,
	start timestamp
);
