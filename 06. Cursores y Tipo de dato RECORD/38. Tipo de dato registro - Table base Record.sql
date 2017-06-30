--38. Tipo de dato registro - Table base Record 
--tablas de muchas columnas

--solo podemos meter un query que devuelve una linea
SET SERVEROUTPUT ON;

DECLARE

  --reg_empleado EMPLEADOS%rowtype;
  reg_empleado empleados%rowtype;

BEGIN

  SELECT * INTO reg_empleado FROM EMPLEADOS WHERE ID=5;

  DBMS_OUTPUT.PUT_LINE(reg_empleado.nombre);
  DBMS_OUTPUT.PUT_LINE(reg_empleado.id);
  DBMS_OUTPUT.PUT_LINE(reg_empleado.salario);
  DBMS_OUTPUT.PUT_LINE(reg_empleado.actualizado);
  
END;
/