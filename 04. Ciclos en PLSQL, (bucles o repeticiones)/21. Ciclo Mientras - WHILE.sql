--21. Ciclo Mientras - WHILE

set serveroutput on;
DECLARE

y NUMBER:= 20;

BEGIN

  dbms_output.put_line('====================================');
  WHILE (y <= 100) LOOP
    dbms_output.put_line(y);
    y:= y + 10;
  END LOOP;
  
  dbms_output.put_line('====================================');
END;
/