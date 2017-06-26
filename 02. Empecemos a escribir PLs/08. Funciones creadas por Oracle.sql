--08. Funciones creadas por Oracle
set serveroutput on;

DECLARE
  nombre nvarchar2(100) := ' Hernán ';
  apellido nvarchar2(100) := 'Velásquez';
  
  nombreCompleto nvarchar2(200);
  
  hoy date := sysdate;
  
  nombre2 nvarchar2(100); -- vacio tambien lo considera nulo

BEGIN
    
  nombreCompleto := nombre || ' ' ||apellido;
  dbms_output.put_line('====================================');
  
    -- Funciones con Textos o variables String
  dbms_output.put_line('Largo: ' || length(nombre) );
    
  dbms_output.put_line('Trim: ' || trim(nombre) || ';');
    
  dbms_output.put_line('Minusculas: ' || lower(nombre));

  dbms_output.put_line('Mayusculas: ' || upper(nombre));
   
  nombre := trim( nombre );
   
  dbms_output.put_line('Cortar: ' || substr( nombre,1,3 ) );
   
  dbms_output.put_line('Reemplazo: ' || replace(nombre, 'H','F')   );
   
   
   
    -- Funcion de fecha
  dbms_output.put_line('Hoy: ' || hoy );
    
  dbms_output.put_line('Agregar mes: ' ||  add_months( hoy , 1   ) );
  
  dbms_output.put_line('Agregar dia: ' ||   ( hoy + 1 )   );
    
  dbms_output.put_line('Dia: ' ||  to_char( hoy , 'dd')     );

  dbms_output.put_line('Dia Mes: ' ||  to_char( hoy , 'dd-MM')     );

  dbms_output.put_line('Anio: ' ||  to_char( hoy , 'yyyy')     );
   
  dbms_output.put_line('NVL: ' ||  NVL( nombre2, 'Es nulo')    );
  dbms_output.put_line('====================================');
END;
/