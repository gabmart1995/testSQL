/*
  Existen varios tipos de clausulas

  FROM: especifica la tabla donde especificas los registros
  WHERE: Especifica las condiciones o criterios de los registros seleccionados
  GROUP BY: Para agrupar los registros seleccionados en funcion de un campo
  HAVING: Especifica las condiciones o criterios que deben cumplir los grupos
  ORDER BY: Ordena los registros seleccionados en funcion de un campo

  operadores de comparacion:

  > : mayor que
  < : menor que
  = : igual que
  >= : mayor igual que
  <= : menor igual que
  <>: distinto que
  BETWEEN: utilizado entre rangos de valores,
  LIKE: utilizado para conocer caracteres comodin
  IN: En, utilizado para especificar datos en concreto

  operadores logicos

  AND: Y, logico,
  OR: O, logico,
  NOT: negacion logica
*/

/* OBTENER LOS REGISTROS DE LA SECCION CERAMICA ( ejercicio 1 ) */
SELECT * FROM productos WHERE seccion = 'CERÁMICA';

/* OBTENER nombre seccion y precio de los productos de la seccion CERAMICA  ( ejercicio 2 )*/
SELECT nombre_articulo, seccion, precio FROM productos WHERE seccion = 'CERÁMICA';

/* Obtener los articulos de deporte y ceramica ( ejercicio 3 )
  NOTA: si vas a buscar criterios dentro de la misma columna se recomienda utilizar OR
  porque si se aplica AND, el busca en 2 columnas diferentes
*/
SELECT nombre_articulo, seccion, precio FROM productos WHERE seccion = 'CERÁMICA' OR seccion = 'DEPORTES';

/* OBTENER los valores de deportes americanos ( ejercicio 4 )*/
SELECT * FROM  productos WHERE seccion = 'DEPORTES' AND pais_origen = 'USA';

/* productos mayores a 300 euros ( ejercicio 5 )*/
SELECT * FROM productos WHERE precio > 300;

/* productos menores a 30 euros ( ejercicio 6 )*/
SELECT * FROM productos WHERE precio < 30;

/* productos entre marzo y abril del 2000  ( ejercicio 7 ) */
SELECT * FROM productos WHERE fecha BETWEEN '2000-03-01' AND '2000-04-30';
SELECT * FROM productos WHERE fecha >= '2000-03-01' AND fecha <= '2000-04-30'; /* alternativa */
