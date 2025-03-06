/* Con WHERE filtramos los valores a devolver */
SELECT column, another_column, …
FROM mytable
WHERE condition_1
    AND/OR condition_2
    AND/OR condition_3;
/* En este caso aparecerán los regitros que SÍ cumplan 
la condición que le antecede. En este caso la condición 
es de que elvalor de la columna "age" sea "38". */
SELECT * FROM hello_mysql.users WHERE age = 38;

SELECT name FROM hello_mysql.users WHERE age = 38;

SELECT user_id, name, surname   
FROM users
WHERE name IN ("Sara");

/* En la última sentencia lo que estamos haciendo es discriminar
los registros con "age" distinta a "38". Pero al mismo tiempo
estamos diciendo que nos muestre solamente valores que no se
repitan. */
SELECT DISTINCT age FROM hello_mysql.users WHERE age = 38;

-- https://www.w3schools.com/sql/sql_where.asp