/* El comando "GROUP BY" es un comando de agrupación. Por lo que 
si no queremos hacer ningún filtrado extra, no tenemos que añadir
un filtrado "WHERE". */

/* Si lo empleamos con "MAX()" nos mostrará todos los valores que
no se repiten en la tabla. */
SELECT MAX(age) FROM users GROUP BY age; 

/* Si lo empleamos con "COUNT()" nosmostrará la cantidad de cada
uno de esos valores que no se repite. */
SELECT COUNT(age), age FROM users GROUP BY age; 

/* A mayores, podemos agregale la columna de la que estamos 
haciendo la búsqueda para saber de qué valores estamos hablando. */
SELECT COUNT(age), age FROM users GROUP BY age ORDER BY age ASC; 

/* Igualmente podemos reordenar esosresultados como queramos. */
SELECT COUNT(age), age FROM users WHERE age > 30 GROUP BY age ORDER BY age ASC; 