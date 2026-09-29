-- Write a PL/SQL block which converts temperature from Celsius to Fahrenheit.

set serveroutput on
set feedback off
set verify off

declare
    Celsius number(5, 2);
    Fahrenheit number(5, 2);
    
begin
    Celsius := &Celsius;
    Fahrenheit := (Celsius * 1.8) + 32;

    dbms_output.put_line('Celsius: ' || Celsius || '*C');
    dbms_output.put_line('Fahrenheit: ' || Fahrenheit || '*F');
    
end;
/

set serveroutput off
set feedback on
set verify on