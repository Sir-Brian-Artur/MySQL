# Ejemplo de conexión desde Python a una base de datos local
# Se ejemplifica cómo evitar SQL INJECTION

import mysql.connector      #1º. Importamos conector


def print_user(user):

    config = {                  #2º. Configuramos la            
        "host": "127.0.0.1",    #configuración con la
        "port": "3306",         #base de datos.
        "database": "hello_mysql",
        "user": "root",
        "password": "root1234"
    }

    #3º. Establecemos la conexion y nos situamos en
    #la base de datos. 
    connection = mysql.connector.connect(**config)
    cursor = connection.cursor()

    #4º. Tenemos la posibilidad de ejecutar una "query"
    query = "SELECT * FROM users WHERE name=%s;"
    print(query)
    cursor.execute(query, (user,))
    result = cursor.fetchall() #4.5. Obtener los datos

    for row in result:      #5º. Pintarlos en terminal
        print(row)

    cursor.close()          #6º. Cerramos la coneion a 
    connection.close()      #la base de datos


print_user("Brais")

#Ej. de cómo sería una "SQL Injection" para modificar y/o destruir
#una base de datos mal securizada con sólo un String. 
print_user("'; UPDATE users SET age = '15' WHERE user_id = 1; --")