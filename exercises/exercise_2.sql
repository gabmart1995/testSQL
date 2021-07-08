/* Ejercicios tema 3 */

/* Muestra productos espanoles esten comprendidos entre febrero y mayo del 2002
	desendientemente
 */
 
SELECT * FROM productos WHERE pais_origen = 'ESPAÑA' AND fecha BETWEEN '2002-02-01' AND '2002-05-31'
	ORDER BY nombre_articulo DESC;
	
/* mostrar empresa direccion y poblacion de clientes ordenadas poblacion asc y direccion des*/
SELECT empresa, direccion, poblacion FROM clientes
	ORDER BY direccion DESC, poblacion ASC;


/* mostrar los clientes poblacion asc */
SELECT * FROM clientes ORDER BY poblacion;
