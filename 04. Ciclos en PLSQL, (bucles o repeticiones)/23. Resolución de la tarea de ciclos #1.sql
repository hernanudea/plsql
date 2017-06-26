--23. Resolución de la tarea de ciclos #1
-- =============
-- Codigo PL-SQL
-- =============q aZ

set SERVEROUTPUT ON;
DECLARE
  TYPE notasArray IS VARRAY(7) OF NUMBER;
  notas notasArray := notasArray(95,60,75,85);
  promedio NUMBER(6,2) := 0;
  suma NUMBER:=0;
  cuenta NUMBER:=1;

BEGIN
  --FOR i IN 1..4 LOOP
  WHILE cuenta < notas.COUNT LOOP
    suma:= suma+ notas(cuenta);
    cuenta:= cuenta+1;
  END LOOP;
  promedio := suma / notas.COUNT;
  dbms_output.put_line( 'Promedio es: '|| promedio ); -- Determine el promedio
END;
/