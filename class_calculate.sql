/*
	CONSULTAS DE CALCULOS
	
	En sql permite las consultas de calculo en la que pueden realizar
	diferentes opciones entre las cuales destacan 
	
	Now(): obtiene el valor actual el dia de hoy
	Datediff(): refleja las diferencias entre 2 fechas
	Date_format(): permite formatear las fechas
	Concat(): pemite concatenar operaciones
	Round() y Truncate(): permite realizar redondeos de numeros decimales
*/

/* Consulta de calculo con redondeo de 2 decimales precio + iva */
SELECT nombre_articulo, seccion, precio, ROUND( precio + 1.21, 2 ) AS precio_iva FROM productos;


/* precio con descuentos de 3 euros  */
SELECT nombre_articulo, seccion, precio, ( precio - 3 ) AS precio_dto FROM productos;


/* 
	Saber los dias de diferencia entre la fecha del articulo y el dia de hoy 
	el formato de la fecha de hoy debe de estar en espanol 
*/
SELECT nombre_articulo, seccion, precio, fecha , DATE_FORMAT( NOW(), '%d-%m-%Y' ) AS dia_hoy, DATEDIFF( NOW(), fecha ) AS dif_fecha    
	FROM productos 
	WHERE seccion = 'DEPORTES';
