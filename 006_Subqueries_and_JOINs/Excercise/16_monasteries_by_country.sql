create table
    monasteries(
        id serial primary key,
        monastery_name varchar(255),
        country_code char(2)
);

insert into
    monasteries(monastery_name, country_code)
values
  ('Rila Monastery "St. Ivan of Rila"', 'BG'),
  ('Bachkovo Monastery "Virgin Mary"', 'BG'),
  ('Troyan Monastery "Holy Mother''s Assumption"', 'BG'),
  ('Kopan Monastery', 'NP'),
  ('Thrangu Tashi Yangtse Monastery', 'NP'),
  ('Shechen Tennyi Dargyeling Monastery', 'NP'),
  ('Benchen Monastery', 'NP'),
  ('Southern Shaolin Monastery', 'CN'),
  ('Dabei Monastery', 'CN'),
  ('Wa Sau Toi', 'CN'),
  ('Lhunshigyia Monastery', 'CN'),
  ('Rakya Monastery', 'CN'),
  ('Monasteries of Meteora', 'GR'),
  ('The Holy Monastery of Stavronikita', 'GR'),
  ('Taung Kalat Monastery', 'MM'),
  ('Pa-Auk Forest Monastery', 'MM'),
  ('Taktsang Palphug Monastery', 'BT'),
  ('Sümela Monastery', 'TR');

alter table
    countries
add column
    "three_rivers" boolean default false;

update
    countries
set
    three_rivers = true
where
    (
        select
            count(*) >= 3
        from
            countries_rivers as cnt_rvs
        where
            cnt_rvs.country_code = countries.country_code
        );
--     three_rivers = TRUE
-- where(
--     select
--         count(*)
--     from
--         countries_rivers as cnt_rvs
--     group by
--         cnt_rvs.country_code
--     having
--         cnt_rvs.country_code = countries.country_code
--          ) >= 3;

select
    mon.monastery_name,
    cnt.country_name
from
    monasteries as mon
join
    countries as cnt
    using (country_code)
where cnt.three_rivers is false
order by mon.monastery_name;
