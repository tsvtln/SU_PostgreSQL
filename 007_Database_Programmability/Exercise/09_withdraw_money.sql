create or replace procedure sp_withdraw_money(
    account_id int,
    money_amount numeric(4)
)
as
    $$
        declare
            account_balance numeric;
    begin
            select
                balance
            from
                accounts
            where
                id = account_id
            into
                account_balance;

            if account_balance - money_amount >= 0 then
                update accounts
                set balance = balance - money_amount
                where id = account_id;
                commit;
            else
                raise notice 'Insufficient balance to withdraw %', account_balance;
            end if;
--         exception
--         when others then
--             rollback;
--             raise;
    end;
    $$
language plpgsql;