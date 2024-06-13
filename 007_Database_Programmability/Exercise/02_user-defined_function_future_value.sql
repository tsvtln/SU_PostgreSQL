CREATE OR REPLACE FUNCTION fn_calculate_future_value(
    initial_sum int,
    yearly_interest numeric,
    number_of_years int
)
    RETURNS numeric AS
$$
DECLARE
result numeric;

    BEGIN
        select
            initial_sum * ((1 + yearly_interest) ^ number_of_years)
        into
            result;
        return trunc(result, 4);
    END;
$$
    LANGUAGE plpgsql;