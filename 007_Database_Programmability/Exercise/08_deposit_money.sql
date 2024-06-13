create or replace procedure sp_deposit_money(
    account_id int,
    money_amount numeric(4)
)
as
    $$
    begin
        update 
            accounts
        set
            balance = balance + money_amount
        where
            id = account_id;
        commit;
    end;
    $$
language plpgsql;