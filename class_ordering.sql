/*
  Ordenaciones en SQL

  ORDER BY: ordena los registros seleccionados en funcion de un campo
  siempre va de ultimo
*/
/* ordenamiento por seccion DESCENDIENTES*/
SELECT * FROM productos WHERE seccion = 'DEPORTES' OR seccion = 'CERÁMICA'
  ORDER BY seccion DESC;

/* ordenamiento por precio ASCENDIENTES*/
SELECT * FROM productos WHERE seccion = 'DEPORTES' OR seccion = 'CERÁMICA'
    ORDER BY precio ASC;

/* Ordenamiento por subniveles, separados por una coma*/
SELECT * FROM productos WHERE seccion = 'DEPORTES' OR seccion = 'CERÁMICA'
  ORDER BY seccion, pais_origen, precio DESC;
