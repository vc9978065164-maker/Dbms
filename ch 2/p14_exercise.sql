/*
Write a function that returns the rank of an employee.
Categories:
doj < 5 -> Junior
15 > doj > 5 -> Senior
doj > 15 -> Super Senior
*/
set serveroutput on
set feedback off
set verify off
declare
    v_empno number;
    v_rank varchar2(50);
begin
    v_empno := &employee_no;
    v_rank := p14_exercise(v_empno);
    dbms_output.put_line(v_rank);
end;
/
set serveroutput off
set feedback on
set verify on
