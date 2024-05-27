alter table countries add column capital_code text;
update countries set capital_code = substring(capital, 1, 2);