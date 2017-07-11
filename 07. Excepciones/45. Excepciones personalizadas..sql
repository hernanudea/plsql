SET SERVEROUTPUT ON;

DECLARE
  ran NUMBER;
  --declaramos el error
  error_1 EXCEPTION;
  error_2 EXCEPTION;
  error_3 EXCEPTION;
  
BEGIN
  ran := ROUND(DBMS_RANDOM.VALUE(1,3));
  CASE 
    WHEN ran = 1 THEN
      RAISE error_1;   --lanzamos el error 
    WHEN ran = 2 THEN
      RAISE error_2;
    WHEN ran = 3 THEN
      RAISE error_3;
  END CASE;
  
  DBMS_OUTPUT.PUT_LINE('Esta linea ninca se ejecuta');
  
  EXCEPTION
    WHEN error_1 THEN
      DBMS_OUTPUT.PUT_LINE('Manejamos el error uno');
    WHEN error_2 THEN
      DBMS_OUTPUT.PUT_LINE('Manejamos el error dos');
    WHEN error_3 THEN
      DBMS_OUTPUT.PUT_LINE('Manejamos el error tres');
    WHEN OTHERS THEN
      DBMS_OUTPUT.PUT_LINE('Se produjo otro tipo de error.');
END;
/