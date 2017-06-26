--17. Tarea Resolución- Mostrando una manera de resolver la tarea

set serveroutput on;
DECLARE
salario NUMBER :=1000;
nuevoSalario NUMBER;


BEGIN
CASE
  WHEN salario <= 600 THEN
    nuevoSalario := salario * 1.15;
  WHEN salario <= 950 THEN
    nuevoSalario := salario * 1.135;
  WHEN salario <= 1400 THEN
    nuevoSalario := salario * 1.1;
  WHEN salario >= 1401 THEN
    nuevoSalario := salario * 1.05;
  END CASE;
    
  dbms_output.put_line('====================================');
  dbms_output.put_line(RPAD('Salario: ',20) || LPAD(salario,10));
  dbms_output.put_line(RPAD('Nuevo Salario: ', 20) || LPAD(nuevoSalario,10));
  dbms_output.put_line('====================================');
END;
/