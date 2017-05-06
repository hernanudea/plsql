--25. Resolución de la tarea de ciclos #2

set serveroutput on;
DECLARE
numero NUMBER:=10;
factorial NUMBER:=1;

BEGIN

<<cicloFactorial>>
FOR i IN 1..numero LOOP 
  factorial := factorial*i;
END LOOP cicloFactorial;

  dbms_output.put_line('====================================');
  dbms_output.put_line('El factorial es: ' || factorial);
  dbms_output.put_line('====================================');
END;
/