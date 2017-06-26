--20. Ciclo Básico - Loop

set serveroutput on;
DECLARE
x NUMBER:=10;
BEGIN

  dbms_output.put_line('====================================');
  
  LOOP <<LoopSimple>>
    dbms_output.put_line(x);
    X := X + 10;
    
    if(x > 100) THEN
      exit;
    END IF;
  
  END LOOP LoopSimple;

  dbms_output.put_line('====================================');
END;
/