set serveroutput on;

DECLARE
x NUMBER := 15;
y NUMBER := 10;

BEGIN
  dbms_output.put_line('El mayor es entre '|| x || ' e ' || y || ' es: '|| mayor_entre(x, y) || '.');
END;
/