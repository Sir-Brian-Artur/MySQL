/* DISTINCT nos trae los valores que son distintos  
de las columnas indicadas */
SELECT DISTINCT * FROM hello_mysql.users;   /* Trae todo porque hay una columna */
                                            /* NotNull y AutoIncremental */
SELECT DISTINCT age FROM hello_mysql.users; /* Donde haya valor lo trae, a menos */
                                            /* que ya esté repetido */