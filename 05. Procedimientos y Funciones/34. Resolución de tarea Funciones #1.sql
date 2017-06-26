--34. Resolución de tarea Funciones #1

CREATE OR REPLACE FUNCTION promedio_notas(n1 NUMBER, n2 NUMBER, n3 NUMBER, n4 NUMBER)
RETURN NUMBER
IS
promedio NUMBER :=0;

BEGIN
  promedio := (n1 + n2 + n3 + n4)/4;
  RETURN promedio;
END;
/
  