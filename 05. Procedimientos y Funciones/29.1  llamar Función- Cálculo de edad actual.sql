SELECT nombre, fechanaci, edad_actual(fechanaci) edad
FROM EMPLEADOS
WHERE edad_actual(fechanaci) >= 35;


set serveroutput on;

DECLARE

BEGIN

  dbms_output.put_line('El mayor es entre '||x || ' e ' || y || ' es: '|| mayor_entre(x, y));

END;
/