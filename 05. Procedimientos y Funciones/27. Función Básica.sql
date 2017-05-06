--27. Función Básica

CREATE OR REPLACE FUNCTION total_empleados
RETURN NUMBER
IS
totalEmpleados NUMBER := 0;

BEGIN
  SELECT COUNT(*) INTO totalEmpleados FROM empleados;
  RETURN totalEmpleados;
END;
/