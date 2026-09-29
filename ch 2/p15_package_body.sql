/*
Write a PACKAGE which includes Package Declaration, Package
Body and call the individual object from the Package.
*/
create or replace package body emp_pkg as
    procedure get_manager(p_empno in emp.empno%type, employee_name out emp.ename%type, manager_name out emp.ename%type) as
    begin
        select e.ename, (select ename from emp where empno = e.mgr) into employee_name, manager_name from emp e where empno = p_empno;
        if(manager_name is NULL) then
            dbms_output.put_line('No manager');
        end if;
    end get_manager;

    function check_sal_status(p_empno emp.empno%type) 
    return varchar2
    as
        avg_sal number(10,2);
        emp_sal emp.sal%type;
        employee_name emp.ename%type;
    begin
        select e.sal, e.ename, (select avg(sal) from emp where deptno = e.deptno ) into emp_sal, employee_name, avg_sal from emp e where empno = p_empno;

        if(emp_sal = avg_sal ) then
            return 'Salary equal to Average(' || avg_sal || ') ' || employee_name || ' ' || emp_sal;
        elsif(emp_sal < avg_sal) then
            return 'Salary Below Average(' || avg_sal || ') ' || employee_name || ' ' || emp_sal;
        else
            return 'Salary Above Average(' || avg_sal || ') ' || employee_name || ' ' || emp_sal;
        end if;
    end check_sal_status;

end emp_pkg;
/