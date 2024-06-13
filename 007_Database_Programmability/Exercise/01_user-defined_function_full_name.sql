CREATE OR REPLACE FUNCTION fn_full_name(first_name varchar(255), last_name varchar(255))
    RETURNS varchar AS
$$
DECLARE
full_name varchar(255);

    BEGIN
        select
            initcap(concat(first_name, ' ', last_name))
        into
            full_name;
        return full_name;
    END;
$$
    LANGUAGE plpgsql;