-- Write a PL/SQL block which accepts measurement in feet and displays it in cm, inch and meter.

set serveroutput on
set feedback off
set verify off

declare
    feet number(10, 2);
    cm number(10,2);
    inch number(10,2);
    meter number(10,2);
begin
    feet := &feet;
    cm := feet * 30.48;
    inch := feet * 12;
    meter := cm / 100;

    dbms_output.put_line('Feet: ' || feet || 'ft');
    dbms_output.put_line('Centimeter: ' || cm || 'cm');
    dbms_output.put_line('Inch: ' || inch || 'in');
    dbms_output.put_line('Meter: ' || meter || 'mt');
end;
/

set serveroutput off
set feedback on
set verify on