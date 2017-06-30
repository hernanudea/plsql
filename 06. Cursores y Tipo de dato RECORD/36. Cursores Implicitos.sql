--36. Cursores Implicitos

--cada que se hace un update, insert o delete, se cre un cursos implicito
--este cursos contiene la cantidad de filas afectadas

--sql%rowcount => contiene la cantidad de filas afectadas en el ultimo query ejecutado
--sql%found => boolean, true encontro registros. false no encontr� registros
--sql%notfound => boolean, true no encontro registros. false si encontr� registros
SET SERVEROUTPUT ON;
DECLARE

BEGIN
  UPDATE empleados set actualizado = sysdate where nombre like '%u%';
  DBMS_OUTPUT.PUT_LINE('Afectado : ' || sql%rowcount);
  
  IF(sql%found) THEN
    DBMS_OUTPUT.PUT_LINE('SI Encontr� Registros'); 
  ELSE
    DBMS_OUTPUT.PUT_LINE('NO Encontr� Registros'); 
  END IF;
  commit;
END;
/

--select * from empleados;