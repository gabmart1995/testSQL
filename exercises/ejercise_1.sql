/*
  Ejercicio 1 SQL
  mostrar la consulta que muestre los campos empresa y poblacion de clientes
*/
SELECT empresa, poblacion FROM clientes;

/* mostrar los articulos de la seccion ceramica */
SELECT * FROM  productos WHERE seccion = 'CERÁMICA';

/* mostrar los articulos de deportes que estan entre 100 y 200 euros mostrando nombre y precio */
SELECT nombre_articulo, precio FROM productos
  WHERE seccion = 'DEPORTES' AND precio BETWEEN 100 AND 200;

/* SELECT nombre_articulo, precio FROM productos
  WHERE seccion = 'DEPORTES' AND ( precio >= 100 AND precio <= 200 );*/

/* mostrar articulos cuyo pais no sea espana */
SELECT * FROM productos WHERE pais_origen <> 'ESPAÑA';

/* mostrar articulos espanoles y de la seccion de deportes o productos mayor 350 euros */
SELECT * FROM productos WHERE
  ( pais_origen = 'ESPAÑA' AND seccion = 'DEPORTES' )
  OR precio > 350;

/* mostrar articulos entre mayo y diciembre, nombre, seccion y fecha */
SELECT nombre_articulo, seccion, fecha FROM productos WHERE fecha BETWEEN '2001-05-01' AND '2001-12-15';
