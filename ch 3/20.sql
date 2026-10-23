create or replace trigger TRG_EMP9_RESTRICT
before insert or update or delete on EMP9
for each row
begin
    if trim(to_char(sysdate, 'dy')) = 'sun' then
        raise_application_error(-20421, 'Operations not allowed on Sunday!');
    elsif trim(to_char(sysdate, 'HH24')) < 9 or trim(to_char(sysdate, 'HH')) > 17 then
        dbms_output.put_line(to_char(sysdate, 'HH24'));
        raise_application_error(-20421, 'Operations only allowed in working hours!');
    end if;
end;
/