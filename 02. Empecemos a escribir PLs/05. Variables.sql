--VARIABLES

set serveroutput on;

DECLARE
  salario number:= 1500;
  nombreEmpleado nvarchar2(50);
  activo boolean;
  fecha date;

BEGIN
  nombreEmpleado:='Hernan Velasquez';
  activo:= true;
  fecha:= '31-12-2015';
  
  dbms_output.put_line('====================================');
  dbms_output.put_line('Nombre: '|| nombreEmpleado);
  dbms_output.put_line('Salario: '|| salario);
  dbms_output.put_line('Fecha: '|| fecha);
  dbms_output.put_line('Activo: '|| case when activo then 'SI' else 'NO' end);
  dbms_output.put_line('====================================');
END;
/