set serveroutput on
set feedback off
set verify off

declare
	p_name varchar(20);
	qty number(3);
	price number(7,2);
	discount number(5,2);
begin
	p_name := '&p_name';
	qty := &qty;
	price := &price;
	dbms_output.put_line('Product : ' || p_name);
	dbms_output.put_line('Qunatity : ' || qty);
	dbms_output.put_line('Price : ' || price);
	discount := &discount;
	dbms_output.put_line('	');
	dbms_output.put_line('Discounted Price : ' || ((price * discount) / 100));
	dbms_output.put_line('Total Price : ' || (price - (price * discount) / 100));
end;
/

set serveroutput off
set feedback on
set verify on