/* El "LIKE" funcionaría como el "=" en el caso del WHERE.
Busca en la columna indicada algo que contenga lo especificado.
Es algo que empleamos cuando no tenemos claro el valor exacto
de lo que estamos buscando. */

-- Para algo que termine con "@gmail.com" 
SELECT * FROM hello_mysql.users WHERE email LIKE '%@gmail.com';

-- Para algo que comience por "juan"
SELECT * FROM hello_mysql.users WHERE email LIKE 'juan%';

-- Para algo que contenga "@"
SELECT * FROM hello_mysql.users WHERE email LIKE '%@%';