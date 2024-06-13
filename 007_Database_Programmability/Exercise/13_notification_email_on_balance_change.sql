create table notification_emails(
    id serial primary key,
    recipient_id int,
    subject varchar,
    body varchar
);

create or replace function trigger_fn_send_email_on_balance_change()
returns trigger
as
    $$
    begin
        insert into
            notification_emails(recipient_id, subject, body)
        values(
               new.account_id,
               'Balance change for account: %',
               new.account_id,
               'On % your balance was changed from % to %',
               DATE(),
               new.old_sum,
               new.new_sum
              );

    end;
    $$
language plpgsql;

create trigger tr_send_email_on_balance_change
    after update on logs
    for each row
    when (old.new_sum <> old.new_sum)
    execute function trigger_fn_send_email_on_balance_change();