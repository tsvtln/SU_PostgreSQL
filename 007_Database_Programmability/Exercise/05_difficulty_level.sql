CREATE OR REPLACE FUNCTION fn_difficulty_level(
    level int
)
    RETURNS varchar AS
$$
DECLARE
diff_level varchar;

BEGIN
    if level <= 40 then
        diff_level := 'Normal Difficulty';
    elsif level between 41 and 60 then
        diff_level := 'Nightmare Difficulty';
    elsif level > 60 then
        diff_level := 'Hell Difficulty';
    end if;
    return diff_level;
END;
$$
    LANGUAGE plpgsql;

select
    user_id,
    level,
    cash,
    fn_difficulty_level(level)
from
    users_games
order by
    user_id;