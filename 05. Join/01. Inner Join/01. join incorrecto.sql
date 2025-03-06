/* Realiza un JOIN de manera incorrecta, ya que no 
existe un campo de relación. Tan sólo unimos columnas
de 2 tablas de forma abrupta. */
SELECT * FROM users
INNER JOIN dni;