-- Write a PL/SQL block to delete the record of employee for given EID.

set serveroutput on
set feedback off
set verify off

declare
    EID emp.eid%TYPE;
    EName emp.EName%TYPE;
begin
    SELECT EID, EName into EID, EName from emp where EID = &EID;
    
    delete from emp where EID = EID;

    dbms_output.put_line('Record deleted of : ' || EName);

end;
/

set serveroutput off
set feedback on
set verify on