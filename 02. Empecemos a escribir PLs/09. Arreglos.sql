--09. Arreglos

set serveroutput on;
DECLARE
--definimos los arreglos
type alumnosArray is varray(5) of nvarchar2(100);
type notasArray is varray(5) of number;

--usamos los arreglos
alumnos alumnosArray;
notas notasArray;


BEGIN

--inicializar arreglos
alumnos := alumnosArray('Matias','Samuel','Salome','Emmanuel','Alejandro');
notas := notasArray(4, 5, 3, 2, 4);
--los valores inician en 1, no en cero

  dbms_output.put_line('====================================');
  dbms_output.put_line('Alumno: ' || alumnos(1) || ' Nota: ' || notas(1));
  dbms_output.put_line('Alumno: ' || alumnos(2) || ' Nota: ' || notas(2));
  dbms_output.put_line('Alumno: ' || alumnos(3) || ' Nota: ' || notas(3));
  dbms_output.put_line('Alumno: ' || alumnos(4) || ' Nota: ' || notas(4));
  dbms_output.put_line('Alumno: ' || alumnos(5) || ' Nota: ' || notas(5));
  
  dbms_output.put_line('');
  dbms_output.put_line('Cambiando las notas del alumno ' || alumnos(4)|| '.');
  notas(4):= 4;
  dbms_output.put_line('Alumno: ' || alumnos(4) || ' Nota: ' || notas(4));

  dbms_output.put_line('====================================');
END;
/