--14. Condicional CASE

set serveroutput on;
DECLARE
ran NUMBER := round(dbms_random.value(0, 5));
BEGIN

  dbms_output.put_line('====================================');
  dbms_output.put_line(ran);
  
  CASE
    WHEN ran=1 THEN
      dbms_output.put_line('Uno');
    WHEN ran=2 THEN
      dbms_output.put_line('Dos');
    WHEN ran=3 THEN
      dbms_output.put_line('Tres');
    WHEN ran=4 THEN
      dbms_output.put_line('Cuatro');
    WHEN ran=5 THEN
      dbms_output.put_line('Cinco');
    ELSE
      dbms_output.put_line('Otro');
  END CASE;
      
  dbms_output.put_line('====================================');
END;
/