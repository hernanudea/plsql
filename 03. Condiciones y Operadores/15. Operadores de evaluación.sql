--15. Operadores de evaluación

set serveroutput on;
DECLARE
A NUMBER := 5;
B NUMBER := 10;
nombre1 NVARCHAR2(100) := 'Hernan' ;
nombre2 NVARCHAR2(100);

BEGIN

  dbms_output.put_line('====================================');
  
  IF (A > B) THEN
    dbms_output.put_line('A mayor B');
  END IF;
  
  IF (A < B) THEN
    dbms_output.put_line('A menor B');
  END IF;
  
  IF (A = B) THEN
    dbms_output.put_line('A igual B');
  END IF;
  
  IF (A <> B) THEN
    dbms_output.put_line('A diferente B');
  END IF;
  
  
  --otros operadores
  
  --LIKE
  IF(nombre1 LIKE 'H%') THEN
    dbms_output.put_line('El nombre contiene la letra H');
  END IF;
  
  --BETWEEN
  IF (A BETWEEN 5 AND 10) THEN
    dbms_output.put_line('A esta entre cinco y diez');
  END IF;
  
  --IN
  IF (B IN (5,6,3,45,23,67,10, 4)) THEN
    dbms_output.put_line('B está contenido en el grupo de elementos');
  END IF;
  
  --IN NULL
  IF (nombre2 IS NULL ) THEN
    dbms_output.put_line('El nombre2 es null');
  END IF;
  
  dbms_output.put_line('====================================');
END;
/