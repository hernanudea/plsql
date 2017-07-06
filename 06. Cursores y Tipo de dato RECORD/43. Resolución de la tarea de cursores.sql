SET SERVEROUTPUT ON;

DECLARE

  empleado empleados%ROWTYPE;
  CURSOR c_empleados IS
  SELECT * FROM empleados;
  
  --procedimiento impresion empleado
  PROCEDURE imprimir_empelado(emp empleados%ROWTYPE) IS
  BEGIN
    DBMS_OUTPUT.PUT_LINE('=============================================');
    DBMS_OUTPUT.PUT_LINE(LPAD('Nombre: ', 20) || RPAD(emp.nombre, 30));
    DBMS_OUTPUT.PUT_LINE(LPAD('Salario diario: ', 20) || RPAD(ROUND(emp.salario/30, 2), 20));
    DBMS_OUTPUT.PUT_LINE(LPAD('Días trabajados: ', 20) || RPAD(emp.diastrabajados, 20));
    DBMS_OUTPUT.PUT_LINE(LPAD('Salario a Pagar: ', 20) || RPAD(ROUND(emp.salario/30, 2) * emp.diastrabajados, 20));
    DBMS_OUTPUT.PUT_LINE('=============================================');
    
    DBMS_OUTPUT.PUT_LINE('');
    
  END;
  --fin procedimiento impresion empleado

BEGIN

  OPEN c_empleados;
  LOOP
    FETCH c_empleados INTO empleado;
    EXIT WHEN c_empleados%notfound;
    imprimir_empelado(empleado);
  END LOOP;
  CLOSE c_empleados;
END;
/