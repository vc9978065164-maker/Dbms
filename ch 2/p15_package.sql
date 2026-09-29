/*
Write a PACKAGE which includes Package Declaration, Package
Body and call the individual object from the Package.
*/
create or replace package emp_pkg as
    procedure get_manager(p_empno emp.empno%type, employee_name out emp.ename%type, manager_name out emp.ename%type);
    function check_sal_status(p_empno emp.empno%type) return varchar2;
end emp_pkg;
/