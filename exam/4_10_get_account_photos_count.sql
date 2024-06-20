create or replace function
    udf_accounts_photos_count(
    account_username VARCHAR(30)
)
returns integer as
    $$
    declare
        photo_count integer;
    begin

        select count(*)
        into photo_count
        from photos
        join accounts_photos on photos.id = accounts_photos.photo_id
        join accounts on accounts_photos.account_id = accounts.id
        where accounts.username = account_username;

        return photo_count;

    end;
    $$
language plpgsql;