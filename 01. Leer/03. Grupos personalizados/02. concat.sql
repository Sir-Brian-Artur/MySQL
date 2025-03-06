/* "CONCAT" sirve para, en una misma columna alvergar varias
columnas de valores de la tabla.  */
SELECT CONCAT(name, surname) FROM users; 

/* De esta forma ponemos concatenar, a parte de los valores
de la tabla, cadenas de texto que los acompañen.  */
SELECT CONCAT('Nombre: ', name, 'Apellido: ', surname) AS "Nombre completo" FROM users; 

-- Es muy común emplearel "AS" en estos casos de concatenación.