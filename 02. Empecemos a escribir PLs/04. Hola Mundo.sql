-- creamos un usuario para esto

set serveroutput on;
DECLARE --definicion de funciones y varialbes

BEGIN --inicio del procedimiento
  --aquí va el codigo
  dbms_output.put_line('====================================');
  dbms_output.put_line('Hola Mundo.');
  dbms_output.put_line('====================================');
END; --fin del procedimiento
/
-- este slash es obligatorio