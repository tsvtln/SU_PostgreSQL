create table logs(
    id serial primary key,
    account_id int,
    old_sum numeric,
    new_sum numeric
);

create or replace function trigger_fn_insert_new_entry_into_logs()
returns trigger
as
    $$
    begin
        insert into logs(account_id, old_sum, new_sum)
        values(
               old.id,
               old.balance,
               new.balance);
        return new;
    end;
    $$
language plpgsql;

create trigger tr_account_balance_change
    after update of balance on accounts
    for each row
    when (new.balance <> old.balance)
    execute function trigger_fn_insert_new_entry_into_logs();