--32. Procedimiento con variables de Entrada y Salida

CREATE OR REPLACE PROCEDURE menor_entre(x IN NUMBER, y IN NUMBER, z OUT NUMBER)
IS
BEGIN

  IF (x > y) THEN
    z := y;
  ELSE
    z := x;
  END IF;
  
END;
/