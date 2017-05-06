set serverouput on;

DECLARE
  IMPUESTOS CONSTANT NUMBER:= .15;
  
  numeroCamisetas NUMBER;
  valorCamiseta NUMBER;
  subtotal NUMBER;
  impuestoValor NUMBER;
  
BEGIN

numeroCamisetas := 18;
valorCamiseta := 12550.234;
subtotal :=numeroCamisetas * valorCamiseta;
impuestoValor := subtotal * IMPUESTOS;

DBMS_OUTPUT.PUT_LINE('======================================================================');
DBMS_OUTPUT.PUT_LINE('');
DBMS_OUTPUT.PUT_LINE(RPAD(LPAD('VENTA CAMISETAS', 36),70));
DBMS_OUTPUT.PUT_LINE(RPAD('Producto', 20) || LPAD('Cantidad | ', 15) || LPAD('Valor Unidad | ', 15) || LPAD('Valor Producto | ', 20) );
DBMS_OUTPUT.PUT_LINE(RPAD('Camiseta', 20) || LPAD(numeroCamisetas, 12)  ||' | '|| LPAD(valorCamiseta, 12)  ||' | '|| LPAD(subtotal, 17) ||' | ' );
DBMS_OUTPUT.PUT_LINE(RPAD('Camiseta', 20) || LPAD(numeroCamisetas, 12)  ||' | '|| LPAD(valorCamiseta, 12)  ||' | '|| LPAD(subtotal, 17) ||' | ' );
DBMS_OUTPUT.PUT_LINE(RPAD('Camiseta', 20) || LPAD(numeroCamisetas, 12)  ||' | '|| LPAD(valorCamiseta, 12)  ||' | '|| LPAD(subtotal, 17) ||' | ' );
DBMS_OUTPUT.PUT_LINE('');
DBMS_OUTPUT.PUT_LINE(LPAD('Subtotal:',48) || LPAD(ROUND(subtotal,2), 20));
DBMS_OUTPUT.PUT_LINE(LPAD('Impuestos:', 48) || LPAD(ROUND(impuestoValor, 2), 20));
DBMS_OUTPUT.PUT_LINE(LPAD('Total:', 48) || LPAD(ROUND(subtotal + impuestoValor, 2), 20));
DBMS_OUTPUT.PUT_LINE('');

DBMS_OUTPUT.PUT_LINE('======================================================================');


END;
/