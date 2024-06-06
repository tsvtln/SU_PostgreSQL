create or replace function
    fn_count_employees_by_town(town_name varchar(20))
returns varchar as
    $$
    DECLARE
        tr varchar;
    BEGIN
        select count(*)
        from
            employees as emp
        join addresses as addr
            using (address_id)
                join towns as twn
                    using (town_id)
        where
            twn.name = $1 into tr;
        return tr;

    end;
    $$
language plpgsql;

select * from fn_count_employees_by_town('Sofia')
