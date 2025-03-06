/* Realizamos la relación entre 3 tablas:
   1º. Solicitamos las 2 columnas "name" .
   2º. Traemos la "Tabla Intermedia"
   3º. Le unimos la tabla "Intermedia". Sobre eso que aparezcan
   los registros con relación "user_id".
   4º. Le unimos la tabla "languages". y lo mismo con relación
   "language_id". 

Obtiene los nombres de usuarios junto a los lenguajes que conocen */
SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;

/* 1º. Solicitamos las 2 columnas "name" .
   2º. Traemos la tabla "users" (suele ser de la cual partimos)
   3º. Le unimos la tabla "users". Sobre eso que aparezcan
   los registros con relación "user_id".
   4º. Le unimos la tabla "languages". y lo mismo con relación
   "language_id".
 
Utilizando otro orden de relación entre tablas, llegamos 
al mismo resultado */
SELECT users.name, languages.name
FROM users
JOIN users_languages ON users.user_id=users_languages.user_id
JOIN languages ON users_languages.language_id=languages.language_id;