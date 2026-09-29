SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

DECLARE
    PI CONSTANT NUMBER(4,2) := 3.14;
    R NUMBER(10,2);
    L NUMBER(10,2);
    W NUMBER(10,2);
    CAREA NUMBER(12,2);
    RAREA NUMBER(12,2);
    CIR NUMBER(12,2);
BEGIN
    R := &R;
    L := &L;
    W := &W;

    DBMS_OUTPUT.PUT_LINE('1. Area Of Circle');
    CAREA := PI * POWER(R,2);
    DBMS_OUTPUT.PUT_LINE('Area Of Circle = ' || CAREA);

    DBMS_OUTPUT.PUT_LINE('2. Area Of Rectangle');
    RAREA := L * W;
    DBMS_OUTPUT.PUT_LINE('Area Of Rectangle = ' || RAREA);

    DBMS_OUTPUT.PUT_LINE('3. Circumference Of Circle');
    CIR := 2 * PI * R;
    DBMS_OUTPUT.PUT_LINE('Circumference Of Circle = ' || CIR);
END;
/
 

SET SERVEROUTPUT OFF 
SET FEEDBACK ON
SET VERIFY ON
