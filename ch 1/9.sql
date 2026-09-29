SET SERVEROUTPUT ON
SET FEEDBACK OFF
SET VERIFY OFF

DECLARE
    P NUMBER(12,2);
    R NUMBER(10,2);
    T NUMBER(10,2);
    SI NUMBER(12,2);
BEGIN
    P := &PRINCIPAL;
    R := &RATE;
    T := &YEARS;

    SI := (P * R * T) / 100;

    DBMS_OUTPUT.PUT_LINE('Principal = ' || P);
    DBMS_OUTPUT.PUT_LINE('Rate      = ' || R);
    DBMS_OUTPUT.PUT_LINE('Years     = ' || T);
    DBMS_OUTPUT.PUT_LINE('Simple Interest = ' || SI);
END;
/

SET SERVEROUTPUT Off
SET FEEDBACK ON
SET VERIFY ON