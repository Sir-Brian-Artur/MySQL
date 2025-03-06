
/* "HAVING" lo empleamos para aplicar filtros sobre las funciones agregadas. Así
   podríamos descartar columnas que no nos interesan, en base a lo que 
   especifiquemos después del "HAVING"
*/

SELECT COUNT(age) FROM users HAVING COUNT(age) > 2;   
