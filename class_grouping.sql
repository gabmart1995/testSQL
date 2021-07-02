/*
  Agrupaciones SQL

  se colocan las funciones de agregado SQL

  AVG: calcula el promedio de un campo
  COUNT: cuenta los registros de un campo
  SUM: suma los valores de un campo
  MAX: devuelve el maximo de un campo
  MIN: devuelve el minimo de un campo

  Se necesita de un campo de agrupacion y de un campo de calculo

  GROUP BY indica que campo queremos agrupar registros identicos
  HAVING: sustituye al where en las consultas de agrupacion
*/

/* mostrar suman los articulos de las secciones se crea un alias para manipular la ordenacion */
SELECT seccion, SUM( precio ) AS suma_articulos FROM productos
  GROUP BY seccion
  ORDER BY suma_articulos DESC;

/* promedios de ceramica y deportes ordenados de forma ascendente */
SELECT seccion, AVG( precio ) AS premedio_articulos FROM productos
  GROUP BY seccion
  HAVING seccion = 'DEPORTES' OR seccion = 'CONFECCIÓN'
  ORDER BY premedio_articulos;

/* Cuantos clientes hay por poblacion */
SELECT poblacion, COUNT(id_cliente) AS n_clientes FROM clientes
  GROUP BY poblacion;

/* PRECIO MAXIMO del area de confeccion */
SELECT seccion, MAX(precio) AS precio_max FROM productos
  WHERE seccion = 'CONFECCIÓN'
  GROUP BY seccion;
