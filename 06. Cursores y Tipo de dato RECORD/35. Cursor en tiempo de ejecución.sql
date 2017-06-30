--35. Cursor en tiempo de ejecución

SET SERVEROUTPUT ON;

DECLARE
promedio NUMBER := 0;

BEGIN

  FOR fila IN (SELECT * FROM notas ORDER BY NOMBRE) LOOP
    promedio := (fila.nota1 + fila.nota2 + fila.nota3 + fila.nota4)/4;
  
    DBMS_OUTPUT.PUT_LINE('Nombre: ' || fila.nombre || ', promedio: ' || promedio);
  END LOOP;


END;
/
