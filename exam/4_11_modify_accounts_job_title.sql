create or replace procedure
    udp_modify_account(
    in address_street varchar(30),
    in address_town varchar(30)
)
as
    $$
    declare
        account_id integer;
        current_job_title varchar(40);

    begin
        select acc.id, acc.job_title
    into
        account_id, current_job_title
    from accounts as acc
    join addresses as adr on acc.id = adr.account_id
    where adr.street = address_street and adr.town = address_town;

    if found then
        update accounts
        set job_title = '(Remote) ' || current_job_title
        where id = account_id;
    end if;

    end;

    $$
language plpgsql;