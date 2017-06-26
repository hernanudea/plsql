--31. Procedimiento actualiza data
CREATE OR REPLACE PROCEDURE actuliza_fecha_empleados
AS
BEGIN

  UPDATE empleados set actualizado = sysdate; 

END;
/


--ejecutar el procedure

EXECUTE ACTULIZA_FECHA_EMPLEADOS;

SELECT * FROM empleados;