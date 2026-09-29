set serveroutput on
set feedback off
set verify off

DECLARE
    I NUMBER := 1;
BEGIN
    WHILE I <= 100 LOOP
        DBMS_OUTPUT.PUT(RPAD(I, 5));

        IF MOD(I, 10) = 0 THEN
            DBMS_OUTPUT.NEW_LINE;
        END IF;

        I := I + 1;
    END LOOP;
END;
/

set serveroutput off
set feedback on
set verify on