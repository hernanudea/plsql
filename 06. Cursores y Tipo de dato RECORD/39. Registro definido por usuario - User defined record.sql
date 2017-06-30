--39. Registro definido por usuario - User defined record

SET SERVEROUTPUT ON;

DECLARE
  
  type carro is record(
    marca NVARCHAR2(100),
    modelo NVARCHAR2(100),
    puertas NUMBER
  );

  mazda carro;
  toyota carro;

BEGIN

  mazda.marca := 'Mazda';
  mazda.modelo := 'Mazda 3';
  mazda.puertas := 4;
  
  toyota.marca := 'toyota';
  toyota.modelo := 'Prado';
  toyota.puertas := 5;
  
  dbms_output.put_line(mazda.modelo);

END;
/