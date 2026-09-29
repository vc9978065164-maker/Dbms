/*
Write a function that returns the rank of an employee.
Categories:
doj < 5 -> Junior
15 > doj > 5 -> Senior
doj > 15 -> Super Senior
*/
create or replace function p14_exercise(p_empno emp.empno%type)
return varchar2
as
    hiredate emp.hiredate%type;
    today date;
    total_exp NUMBER;
begin
    select hiredate into hiredate from emp where empno = p_empno;
    select sysdate into today from dual;

    total_exp := floor(abs((hiredate - today) / 365));
    
    if(total_exp < 5) then
        return 'Junior. Experience: ' || total_exp || ' years';
    elsif(total_exp < 5) then
        return 'Senior. Experience: ' || total_exp || ' years';
    else
        return 'Super Senior. Experience: ' || total_exp || ' years';
    end if;
    
exception
    when no_data_found then
        return 'Employee Not Found. id: ' || p_empno;
    when others then
        return 'Error: ' || sqlerrm;
end;
/
