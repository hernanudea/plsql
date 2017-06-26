--28. Funciones con parámetros de entrada

CREATE OR REPLACE FUNCTION mayor_entre(x in NUMBER, y in NUMBER)
RETURN NUMBER
IS

BEGIN
  IF(x>y) THEN
    RETURN x;
  ELSE
    RETURN y;
  END IF;
END;
/
--show err;