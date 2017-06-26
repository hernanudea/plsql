set serveroutput on;

DECLARE
empleados NUMBER;

BEGIN
  empleados := total_empleados;
  DBMS_OUTPUT.PUT_LINE('Total Empleados: ' || empleados);
END;
/

SELECT 'Total Empleados: ' || total_empleados "Total Empleados" from dual;