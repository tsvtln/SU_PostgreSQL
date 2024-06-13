CREATE OR REPLACE FUNCTION fn_is_word_comprised(
    set_of_letters varchar(50),
    word varchar(50)
)
    RETURNS boolean AS
$$
DECLARE
    letters text := lower(set_of_letters);
    word_l text := lower(word);
    letter char;

    BEGIN
    for i in 1..length(word_l) loop
        letter := substr(word_l, i, 1);

        if letter ~ '[a-z]' then
            if position(letter in letters) = 0 then
                return false;
            end if;
            letters := regexp_replace(letters, letter, '', 'g');
        end if;
        end loop;
    return true;
    END;
$$
    LANGUAGE plpgsql;

select * from fn_is_word_comprised('bobr', 'Rob');