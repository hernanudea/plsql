--31. Procedimiento Básico
CREATE OR REPLACE PROCEDURE hola_mundo
AS
BEGIN
  dbms_output.put_line('====================================');
  dbms_output.put_line('Hola Mundo');
  dbms_output.put_line('====================================');
END;
/

--para llamar el procedimiento

EXECUTE hola_mundo;