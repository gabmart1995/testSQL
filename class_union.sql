/* Consultas multitabla 
	Permite el control y union de datos internos entre varias tablas
	existen 2 versiones
	
	Union externa
	
	UNION: permite unir informacion de 2 tablas, tiene un detalle solo puede realizar uniones en la que ambas tengan las mismas cantidad de 
	columnas anade a la union externa al final de la consulta y la informacion de las columnas correponde al lado izq. de la union, todas
	las consultas deben tener los mismos campos en caso de que haya registros repetidos en la tabla 1 y 2 muestra las opciones una vez si se encuentran repetidas y 
	correponde al de la tabla 1
	
	UNION_ALL: es identica a union pero muestra las opciones una vez si se encuentran repetidas y muestra todos
	
	EXCEPT
	INTERSECT
	MINUS
	
	Union interna
	
	INNER JOIN 
	LEFT JOIN
	RIGHT JOIN

*/

/* UNION */
SELECT * FROM productos WHERE seccion = 'DEPORTES' UNION 
	SELECT * FROM productos_nuevos WHERE seccion = 'DEPORTES DE RIESGO';


SELECT * FROM productos WHERE precio > 500 UNION
	SELECT * FROM productos_nuevos WHERE seccion = 'ALTA COSTURA';


UNION ALL 
SELECT * FROM productos UNION ALL SELECT * FROM productos_nuevos;
