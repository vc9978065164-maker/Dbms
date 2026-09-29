SET SERVEROUTPUT ON
SET VERIFY OFF
SET FEEDBACK OFF

DECLARE
    PI CONSTANT NUMBER(3,2) := 3.14;
    R NUMBER(5);
    CIR NUMBER(7,2);
BEGIN
    R := &R;

    CIR := 2 * PI * R;

    DBMS_OUTPUT.PUT_LINE('Circumference Of Circle = ' || CIR);
END;
/