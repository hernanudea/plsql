--37. Cursores Explicitos

SET SERVEROUTPUT ON;

DECLARE
nombre NVARCHAR2(200);
salario NUMBER;

CURSOR c_empleado IS --creamos el cursos
SELECT nombre, salario FROM empleados;

BEGIN
  OPEN c_empleado; --abrimos el cursor
    LOOP
      FETCH c_empleado into nombre, salario;
      EXIT WHEN c_empleado%notfound; -- decimos cuando sale del loop
      
      DBMS_OUTPUT.PUT_LINE(RPAD('Nombre:', 10) || RPAD(nombre, 30) || RPAD('Salario:', 10)|| LPAD(salario,6) ||'.');
    
    END LOOP;
  CLOSE c_empleado; --cerramos el cursos

END;
/