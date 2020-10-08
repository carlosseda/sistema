# Para lanzar este archivo necesitamos instalar previamente en el Windows que lo ejecuta el siguiente módulo: 
#
# https://dev.mysql.com/downloads/connector/net/
#
# A continuación debemos crear un usuario en mysql que tenga acceso remoto.Debemos entrar en mysql server y escribir:
#
#############
#
# CREATE USER 'nombre_de_usuario'@'%'IDENTIFIED BY 'contraseña_preferida'
#
# # # # El símbolo % permite que el usuario se conecte de manera remota, si pusieramos 'localhost' sólo podría usarse localmente
#
# GRANT ALL PRIVILEGES ON sistema.* TO 'nombre_de usuario'@'%' WITH GRANT OPTION;
#
############# 
#
# FLUSH PRIVILEGES
# 
############# 

# Vamos a seguir la siguiente guía:
#
# https://michlstechblog.info/blog/powershell-some-examples-to-use-a-mysql-database/
#
#
# Cargamos el módulo que hemos instalado que nos permite conectar con nuestro mysql

[void][System.Reflection.Assembly]::LoadWithPartialName("MySql.Data")

# Guardamos en la variable $user el nombre del usuario que hemos creado previamente (en este caso "administrador", se recomienda usar
# por seguridad un nombre más discreto). En la variable $password guardaremos la ruta al archivo que contendrá nuestra contraseña
# encriptada. Para crearlo escribiremos lo siguiente en Powershell que arrancará el script:
#
# "clave_preferida" | ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString | Out-File "C:\mysql_password.txt"
#
# Finalmente creamos un objeto PSCredential en la variable $cred que contendrá nuestro usuario ($cred.UserName) como nuestra
# contraseña en texto plano $cred.GetNetworkCredential().Password


[string] $User = "administrador"
[string] $File = "C:\mysql_password.txt"
[PSObject] $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $File | ConvertTo-SecureString)


# Añadimos el nombre de la base de datos y la ip del servidor que la aloja para crear una conexión

[string]$MySQLDB = 'sistema'
[string]$MySQLHost = '192.168.0.154'
[string]$ConnectionString = "server="+$MySQLHost+";port=3306;user='" + $Credential.UserName + "';password=" + $Credential.GetNetworkCredential().Password + ";database="+$MySQLDB


$connection = New-Object MySql.Data.MySqlClient.MySqlConnection($ConnectionString)

# Lo siguiente es un "try&catch", el ordenador ejecutará el código de la sección try (en este caso abrir una conexión), si algo sale
# mal todo lo cambiado por el código volverá a su estado original y ejecutará el código de catch, que usualmente suele ser devolver
# un mensaje de error.  

$Error.Clear()
try
{
    $connection.Open()
}
catch
{
    write-warning ("Could not open a connection to Database $MySQLDB on Host $MySQLHost. Error: "+$Error[0].ToString())
}

# Preparamos un objeto MySqlCommand cuyo valor de su atributo CommandText será la query de MySQL (en este caso
# insertar un registro en la tabla t.chasis). 

$MYSQLCommand = New-Object MySql.Data.MySqlClient.MySqlCommand
$MYSQLCommand.Connection = $connection
$MYSQLCommand.CommandText='INSERT into `sistema`.`t_ram_connection` (`bank_label`,`memory_type`,`max_memory_frequency`,`base_memory_frequency`) VALUES("A1","DDR4",3.4,2.4)'

# Finalmente ejecutamos la query

$Error.Clear()
try
{
    $queryResponse = $MYSQLCommand.ExecuteNonQuery()

    write ("query Ok")
}
catch
{
    write-warning ("Could not open a connection to Database $MySQLDB on Host $MySQLHost. Error: "+$Error[0].ToString())
}

