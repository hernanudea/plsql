--12. Condicion IF - THEN y IF THEN ELSE

set serveroutput on;
DECLARE

nota NUMBER := 68;


BEGIN

  --IF(nota=69 OR nota = 68) THEN
  if(nota BETWEEN 67 AND 69) THEN
    nota:= 70;
  END IF;
  
  dbms_output.put_line('====================================');
  
  IF(nota >= 70) THEN
    dbms_output.put_line('Aprobó con nota: ' || nota);
  ELSE
    dbms_output.put_line('Reprobó con nota: ' || nota);
  END IF;
  
  dbms_output.put_line('====================================');
END;
/