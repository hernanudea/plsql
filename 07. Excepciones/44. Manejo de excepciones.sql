SET SERVEROUTPUT ON;

DECLARE
  nombre nvarchar2(100);

  BEGIN
  --estaconsutlta no arraja resultados
  SELECT nombre INTO nombre FROM empleados WHERE id = 100;
  
  DBMS_OUTPUT.PUT_LINE(nombre);
  
  EXCEPTION
    WHEN NO_DATA_FOUND THEN
      DBMS_OUTPUT.PUT_LINE('No se encontró dato para mostrar');
    WHEN OTHERS THEN --si no encuentra otra exception mas adecuada ejecuta esta
      DBMS_OUTPUT.PUT_LINE('Ocurrió otro tipo de error.');

END;
/