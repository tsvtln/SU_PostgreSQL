CREATE OR REPLACE FUNCTION fn_is_game_over(
    is_game_over boolean
)
    RETURNS table(
        name varchar(50),
        game_type_id int,
        is_finished boolean
                 )
    AS
$$
BEGIN
    return query
    select
        g.name,
        g.game_type_id,
        g.is_finished
    from
        games as g
    where g.is_finished = is_game_over;
END;
$$
    LANGUAGE plpgsql;