/* Al haber dos restricciones de coincidencias distintas,
es difícil que se dé el caso de que se agregue nuevo 
contenido usando un "LEFT". La única opción aparente es
usar un "RIGHT JOIN" sobre el último JOIN  que se añada. */
SELECT users.name, languages.name
FROM users
LEFT JOIN users_languages ON users.user_id=users_languages.user_id
LEFT JOIN languages ON users_languages.language_id=languages.language_id;

