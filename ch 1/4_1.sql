set serveroutput on
set feedback off
set verify off

SET SERVEROUTPUT ON

BEGIN
    FOR I IN 1..100 LOOP
        DBMS_OUTPUT.PUT(RPAD(I, 5));

        IF MOD(I, 10) = 0 THEN
            DBMS_OUTPUT.NEW_LINE;
        END IF;
    END LOOP;
END;
/

set serveroutput off
set feedback on
set verify on