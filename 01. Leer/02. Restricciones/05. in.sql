/* En el caso de que necesitemos obtener los resultados
con varios valores en específico, y no querramos
emplear el "AND" de forma reiterada, tenemos "IN". */
SELECT * FROM users WHERE name IN ('Juan', 'Sara');