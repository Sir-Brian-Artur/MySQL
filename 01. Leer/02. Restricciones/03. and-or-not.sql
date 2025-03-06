/* "AND" se emplea para darle otro condicionante más a los
valosres de los registos que queremos obtener. */
SELECT * FROM hello_mysql.users WHERE email='juanito23@gmail.com' AND age=38;


/* "OR" se emplea para dar más opciones de valores aceptados. */
SELECT * FROM hello_mysql.users WHERE email='juanito23@gmail.com' OR email = 'sara_sarita@gmail.com';


/* "NOT" lo empleamos cuando queremos buscar justamente los 
registros distintos a lo IGUALADO. */
SELECT * FROM hello_mysql.users WHERE NOT email='juanito23@gmail.com';