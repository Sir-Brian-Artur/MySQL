/* "UPDATE" se utiliza para modificar los registros 
existentes en una tabla. */
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

 /* El "WHERE" especifica qué registros deben actualizarse. 
 Si se omite el "WHERE", ¡se actualizarán todos los 
 registros de la tabla! */
 UPDATE users 
 SET age = '21' 
 WHERE user_id = 11;

/* Los "Strings" los detecta como si fueran "Numbers" */
 UPDATE users 
 SET age = 20, init_date = '2020-11-12' 
 WHERE user_id = 11;