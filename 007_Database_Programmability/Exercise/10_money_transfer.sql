create or replace procedure sp_transfer_money(
    sender_id int,
    receiver_id int,
    amount numeric(4)
)
as
    $$
    begin
        call sp_withdraw_money(sender_id, amount);
        call sp_deposit_money(receiver_id, amount);

        if (select
                balance
            from
                accounts
            where
                id = sender_id) >= 0 then
            commit;
        else
            rollback;

        end if;

    end;
    $$
language plpgsql;