--19. Salir o Continuar en el ciclo ( EXIT y CONTINUE)

set serveroutput on;
DECLARE
numero NUMBER:=8;

BEGIN

  dbms_output.put_line('====================================');
  dbms_output.put_line('Imprimir la tabla del ' || numero);

  <<ciclo_tabla_numero>>
  FOR i IN 1..10 LOOP
  
  IF (i=6) THEN
    CONTINUE;
  END IF;
  --exit => sale dl ciclo
  --continue => salta la iteración actual del ciclo
  
  --imprime solo los numeros pares
  IF (MOD(i, 2) <> 0) THEN
    CONTINUE;
  END IF;
  
    --dbms_output.put_line(i || ' * '|| numero || ' = ' || numero*i);
    
  dbms_output.put(i);
  dbms_output.put(' * ');
  dbms_output.put(numero);
  dbms_output.put(' = ');
  dbms_output.put_line(i*numero);
  END LOOP ciclo_tabla_numero;

  dbms_output.put_line('====================================');
END;
/