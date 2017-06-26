--30. Definir funciones dentro de PLs

set serveroutput on;

DECLARE
salarioPromedio NUMBER := 0;

--=============================================
-- Obtener Promedio
--=============================================
FUNCTION obtener_promedio -- si no recibe para metros no es necesario los parentesis
  RETURN NUMBER
  IS
    promedio number := 0;
  BEGIN
      
      SELECT AVG(salario) INTO promedio FROM empleados;
      RETURN promedio;
      
    END;
--====================Fin Función promedio=========================

BEGIN -- Funcion PL Principal

salarioPromedio := obtener_promedio();

DBMS_OUTPUT.PUT_LINE('El salario promedio es: ' || salarioPromedio);

END;
/