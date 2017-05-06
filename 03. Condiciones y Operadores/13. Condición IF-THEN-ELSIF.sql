--13. Condición IF-THEN-ELSIF

set serveroutput on;
DECLARE
nota NUMBER:= 85;

BEGIN

  dbms_output.put_line('====================================');
  
  IF(nota>=90) THEN
    dbms_output.put_line('Excelente');
  ELSIF(nota >= 80) THEN --sin la E
    dbms_output.put_line('Muy bien');
    ELSIF(nota >= 70) THEN
      dbms_output.put_line('Bien');
      ELSE
        dbms_output.put_line('Necesitas mejorar');
  END IF;
  
  dbms_output.put_line('====================================');
END;
/