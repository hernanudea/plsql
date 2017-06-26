--CONSTANTES
--calcular el area del circulo pi*r^2
--primero las constantes, luego las variables

DECLARE
  --constantes
  PI CONSTANT NUMBER:= 3.1416; --se deben inicialziar en la declaración
  
  --variables
  area NUMBER;
  radio NUMBER;
BEGIN
  radio:= 7;
  area:= PI*(power(radio, 2));
  dbms_output.put_line('========================================');
  DBMS_OUTPUT.PUT_LINE('Area: ' || round(area, 2) || ' cm^2');
  dbms_output.put_line('========================================');
END;
/