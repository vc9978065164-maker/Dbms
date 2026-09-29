SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
    L NUMBER(5);
    W NUMBER(5);
    RAREA NUMBER(7,2);
BEGIN
    L := &L;
    W := &W;

    RAREA := L * W;

    DBMS_OUTPUT.PUT_LINE('Area Of Rectangle = ' || RAREA);
END;
/