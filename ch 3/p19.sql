/*
Write a trigger that restricts the entry of record if salary is greater than 50000.
*/

create or replace trigger tr_emp_salary
before insert or update on EMP9
for each row
begin
    if :NEW.basicsal > 50000 then
        raise_application_error(-20421, 'Salary cannot be more than 50,000.');
    end if;
end;
/