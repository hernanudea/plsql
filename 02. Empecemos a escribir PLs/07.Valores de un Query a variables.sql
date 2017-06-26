--07. Valores de un Query a variables

set serveroutput on;
DECLARE
  cantidadRegistros NUMBER;
  usuario NVARCHAR2(100);

BEGIN
-- into, para indicar la variable donde queremos guardar
  /*
  SELECT USER INTO usuario FROM dual; 
  SELECT COUNT(*) INTO cantidadRegistros FROM dual;
  */
  
  SELECT USER, COUNT(*) INTO usuario, cantidadRegistros FROM dual; 
  --primero la seleccion sql y luego las variables en el mismo orden
  
  dbms_output.put_line('====================================');
  DBMS_OUTPUT.PUT_LINE('Usuario: '|| usuario);
  DBMS_OUTPUT.PUT_LINE('Cantidad Registros: '|| cantidadRegistros);
  dbms_output.put_line('====================================');
END;
/