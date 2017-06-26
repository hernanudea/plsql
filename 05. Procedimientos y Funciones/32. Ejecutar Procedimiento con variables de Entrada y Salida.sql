--32. Procedimiento con variables de Entrada y Salida


set serveroutput on;
DECLARE

  m NUMBER := 5;
  n NUMBER := 15;
  c NUMBER;

BEGIN
  menor_entre(m, n, c);
  dbms_output.put_line('====================================');
  dbms_output.put_line('El menor entre ' || m || ' y '|| n || ' es ' || c);
  dbms_output.put_line('====================================');
END;
/