--29.  Función- Cálculo de edad actual

CREATE OR REPLACE FUNCTION edad_actual (fechaNacimiento IN DATE)
RETURN NUMBER
IS
edad NUMBER(3) := 0;

BEGIN

edad := TRUNC((TO_NUMBER(TO_CHAR(SYSDATE, 'YYYYMMDD'))- TO_NUMBER(TO_CHAR(fechaNacimiento, 'YYYYMMDD')))/10000);
RETURN edad;

EXCEPTION
WHEN OTHERS then
edad := 3;
RETURN edad;

END;
/