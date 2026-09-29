-- Write a PL/SQL block to calculate the total, percentage and grade of student based on his/her Rollno from RESULT table. (Create RESULT table with Rollno, Name, Sub1, Sub2, Sub3, Sub4, Sub5, Total, Per,Grade attributes with appropriate data type).

set serveroutput on
set feedback off
set verify off

 -- create table result (Rollno number(3), Name varchar2(20), Sub1 number(3), Sub2 number(3), Sub3 number(3), Sub4 number(3), Sub5 number(3), Total number(3), Per number(5,2),Grade varchar2(1));

declare
    Rollno number(3);
    Name varchar2(20);
    Sub1 number(3);
    Sub2 number(3);
    Sub3 number(3);
    Sub4 number(3);
    Sub5 number(3);
    Total number(3);
    Per number(5,2);
    Grade varchar2(1);
begin
    
    Rollno := &Rollno;
    Name := '&Name';
    Sub1 := &Sub1;
    Sub2 := &Sub2;
    Sub3 := &Sub3;
    Sub4 := &Sub4;
    Sub5 := &Sub5;

    dbms_output.put_line('Roll no: ' || Rollno);
    dbms_output.put_line('Name: ' || Name);
    dbms_output.put_line('Subject 1: ' || Sub1);
    dbms_output.put_line('Subject 2: ' || Sub2);
    dbms_output.put_line('Subject 3: ' || Sub3);
    dbms_output.put_line('Subject 4: ' || Sub4);
    dbms_output.put_line('Subject 5: ' || Sub5);

    Total := (Sub1 + Sub2 + Sub3 + Sub4 + Sub5);
    Per := Total / 500 * 100;

    if(Per >= 90) then
        Grade := 'A';
    elsif(Per >= 80) then
        Grade := 'B';
    elsif(Per >= 70) then
        Grade := 'C';
    elsif(Per >= 60) then
        Grade := 'D';
    elsif(Per >= 40) then
        Grade := 'E';
    else
        Grade := 'F';
    end if;

    if(Grade = 'F') then
        dbms_output.put_line('You are failed');
        Per := null;
    end if;
    
    insert into result values(Rollno, Name, Sub1, Sub2, Sub3, Sub4, Sub5, Total, Per, Grade); commit;

    dbms_output.put_line('Data inserted');
end;
/

set serveroutput off
set feedback on
set verify on