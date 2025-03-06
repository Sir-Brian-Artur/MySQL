/* "AS" se emplea para cambiar tanto el nombre de la
columna como el de la propia tabla en el momento de la 
consulta. */
SELECT name, init_date AS 'Fecha de inicio' FROM users;

/* El comando AliaS sirve para establecer, en el monto que estamos recuperando
   datos, para darle un nombre distinto al que ya tiene.
   Lo empleamos para facilitar la lectura de campos y tablas cuando estamos
   trabajando con varios datos de diferentes tablas.
*/