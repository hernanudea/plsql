/*
1- Se definirá el salario base en Dólares del
empleado. Este dato lo ingresaremos en la declaración
del PL. (Debe de ser entre un rango de 600 a 2000
USDs)
2- El cálculo del aumento será de la siguiente manera
* <= $600, le corresponde un 15% de aumento
* entre 601 y 950, aumento de 13.5%
* entre 951 y 1400, aumento de 10%
* >= 1401, aumento del 5%
3- Imprimir los resultados en consola.
*/
set serveroutput on ; 

DECLARE

sueldo number := 2000;
sueldoAumentado number;
 
BEGIN
 IF(sueldo <=600) THEN
   sueldoAumentado := sueldo+(sueldo*0.15);
   ELSIF (sueldo between 601 and 950) THEN
     sueldoAumentado := sueldo+(sueldo*0.135);
     ELSIF(sueldo between 951 and 1400) THEN
     sueldoAumentado := sueldo+(sueldo*0.10);
     ELSE
     sueldoAumentado :=sueldo + (sueldo*0.10);
 END IF;

 dbms_output.put_line('================================');
 dbms_output.put_line(LPAD('Sueldo: ',25)|| sueldo);
 dbms_output.put_line('Sueldo Aumentado: '|| sueldoAumentado);
 dbms_output.put_line('================================');

END;
/