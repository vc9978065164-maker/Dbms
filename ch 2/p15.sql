/*
Write a PACKAGE which includes Package Declaration, Package
Body and call the individual object from the Package.
*/

set serveroutput on
set feedback off
set verify off

declare
    p_empno emp.empno%type;
    employee_name emp.ename%type;
    manager_name emp.ename%type;

    salary_status varchar2(50);
begin
    p_empno := &employee_no;
    emp_pkg.get_manager(p_empno, employee_name, manager_name);

    dbms_output.put_line('Employee Id: ' || p_empno);
    dbms_output.put_line('Employee name: ' || employee_name);

    if(manager_name is NULL) then
        dbms_output.put_line('No Manager Found');
    else 
        dbms_output.put_line('Manager name: ' || manager_name);
    end if;


    salary_status := emp_pkg.check_sal_status(p_empno);
    dbms_output.put_line(salary_status);
end;
/

set serveroutput off
set feedback on
set verify on