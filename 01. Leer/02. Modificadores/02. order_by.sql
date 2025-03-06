/* Con ORDER BY ordenamos los Registros de la tabla que 
hemos seleccionado por la columna que le indiquemos. */
SELECT * FROM hello_mysql.users ORDER BY age;

/* Por defecto nos lo ordena de forma ascendente. 
Pero si se lo especifiamos con "DESC", nos lo 
ordena descendentemente. */
SELECT * FROM hello_mysql.users ORDER BY age ASC;

SELECT * FROM hello_mysql.users ORDER BY age DESC;

/* De la misma forma, podemos mezclar 2 condicionales
en la misma sentencia. */
SELECT * FROM hello_mysql.users WHERE age != 38 ORDER BY age DESC;

/* E incluso especificar que en vez de querer TODOS los 
valos de los registros, especificarle que sólo queremos
el nombre. */
SELECT name FROM hello_mysql.users WHERE age != 38 ORDER BY age DESC;