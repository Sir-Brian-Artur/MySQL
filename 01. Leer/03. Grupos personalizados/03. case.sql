/* Podemos en función de un resultado decidir qué va 
a pasar. */

/* "WHEN" funcionaría como un "IF" de JavaScript.*/
SELECT *,
CASE
	WHEN age = 18 THEN 'Acaba de cumplir 18'
	WHEN age > 18 THEN 'Es mayor de edad'
	ELSE 'Es menor'
END AS edad_user
FROM users;

/* Cuando se cumple algo condición, pasa de leer las que 
le siguen. */

/* Ya que "CASE" funciona como una nueva Columna, hay 
que acordarse de separarla de las demás por coma. 
Del mismo modo, debemos darle un nombre con el método 
"AS". Aunque funcionaría de igual manera, pero con un
nombre larguísimo. */
SELECT *,
CASE
	WHEN age > 18 THEN true
	ELSE false
END AS '¿Es major de edad?',
FROM users;

/* 
CASE
    WHEN  condición_1  THEN  resolución_1
    WHEN  condición_2  THEN  resolución_2 
    ELSE  resolución_por_defecto
END  AS  'Nombre_de_la_columna'
*/