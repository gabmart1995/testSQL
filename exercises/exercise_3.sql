/* Ejercicio 3 consultas de agrupacion */

/* ejercicio 1 */
SELECT direccion, telefono, poblacion AS residencia FROM clientes
	ORDER BY poblacion DESC;
	
/* ejercicio 2 obtener las poblaciones de la tabla clientes */
SELECT poblacion FROM clientes GROUP BY poblacion;


/* ejercicio 3 agrupar la media del precio de los articulos de las secciones */
SELECT seccion, AVG( precio ) AS promedio_precio FROM productos GROUP BY seccion;

/* ejercio la media de todas las secciones menos de jugueteria */
SELECT seccion, AVG( precio ) AS media_seccion FROM productos 
	WHERE seccion <> 'JUGUETERÍA' GROUP BY seccion;

/* ejercicio final */
SELECT COUNT( seccion ) AS total_deportes FROM productos WHERE seccion = 'DEPORTES' GROUP BY seccion;
