

SELECT nombre, fechanaci, edad_actual(fechanaci) edad
FROM EMPLEADOS
WHERE edad_actual(fechanaci) >= 35;


SELECT EDAD_ACTUAL(TO_DATE('19870626','YYYYMMDD')) FROM  DUAL;