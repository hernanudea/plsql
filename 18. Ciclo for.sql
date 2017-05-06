--18. Ciclo for

set serveroutput on;
DECLARE
numero NUMBER:=8;

BEGIN

  dbms_output.put_line('====================================');
  dbms_output.put_line('Imprimir la tabla del ' || numero);
  <<ciclo_tabla_nmero>>
  FOR i IN 1..10 LOOP
    --dbms_output.put_line(i || ' * '|| numero || ' = ' || numero*i);
    
  dbms_output.put(i);
  dbms_output.put(' * ');
  dbms_output.put(numero);
  dbms_output.put(' = ');
  dbms_output.put_line(i*numero);
  END LOOP ciclo_tabla_nmero;

  dbms_output.put_line('====================================');
END;
/