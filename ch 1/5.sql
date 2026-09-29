-- Write a PL/SQL block which displays gross salary of employees as per user input EID. (Consider EMP table with EID, EName, Deptno, Deptname, Gender, Age, BasicSal) with appropriate data types.) Gross_Salary: BASICSAL + (DA + HRA + Medical) – PF. Rules: HRA = 15% of basic, DA = 50% of basic, Medical = Rs. 500, PF = 10% of basic.

set serveroutput on
set feedback off
set verify off

--create table emp (eid number(3), EName varchar2(20), Deptno number(5), Deptname varchar2(50), Gender varchar2(1), Age number(3), BasicSal number(10));

--insert into emp values(1, 'vivek', 208, 'IT', 'M', 20, 25000);

declare
    EID emp.eid%TYPE;
    EName emp.EName%TYPE;
    BasicSal emp.BasicSal%TYPE;
    HRA number(10);
    DA number(10);
    Medical number(10);
    PF number(10);
    Gross_Salary number(10);
begin

    SELECT eid, EName, BasicSal INTO EID,EName, BasicSal FROM emp WHERE eid = &eid;

    HRA := (BasicSal * 15) / 100;
    DA := (BasicSal * 50) / 100;
    Medical := 500;
    PF := (BasicSal * 10) / 100;
    Gross_Salary := BasicSal + HRA + DA + Medical - PF;

    dbms_output.put_line('Eid: ' || EID);
    dbms_output.put_line('Name: ' || EName);
    dbms_output.put_line('Gross Salary: ' || Gross_Salary);

end;
/

set serveroutput off
set feedback on
set verify on