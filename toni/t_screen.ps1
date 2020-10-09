# Para lanzar este archivo necesitamos instalar previamente en el Windows que lo ejecuta el siguiente m�dulo: 
#
# https://dev.mysql.com/downloads/connector/net/
# Le damos clic al segundo download
#
# A continuaci�n debemos crear un usuario en mysql que tenga acceso remoto.Debemos entrar en mysql server y escribir:
#
#############
#
# CREATE USER 'nombre_de_usuario'@'%'IDENTIFIED BY 'contrase�a_preferida'
#
# # # # El s�mbolo % permite que el usuario se conecte de manera remota, si pusieramos 'localhost' s�lo podr�a usarse localmente
#
# GRANT ALL PRIVILEGES ON sistema.* TO 'nombre_de usuario'@'%' WITH GRANT OPTION;
#
############# 
#
# FLUSH PRIVILEGES
# 
############# 

# Vamos a seguir la siguiente gu�a:
#
# https://michlstechblog.info/blog/powershell-some-examples-to-use-a-mysql-database/
#
#
# Cargamos el m�dulo que hemos instalado que nos permite conectar con nuestro mysql

[void][System.Reflection.Assembly]::LoadWithPartialName("MySql.Data")

# Guardamos en la variable $user el nombre del usuario que hemos creado previamente (en este caso "administrador", se recomienda usar
# por seguridad un nombre m�s discreto). En la variable $password guardaremos la ruta al archivo que contendr� nuestra contrase�a
# encriptada. Para crearlo escribiremos lo siguiente en Powershell que arrancar� el script:
#
# "clave_preferida" | ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString | Out-File "C:\mysql_password.txt"
#
# Finalmente creamos un objeto PSCredential en la variable $credential que contendr� nuestro usuario ($credential.UserName) como nuestra
# contrase�a en texto plano $cred.GetNetworkCredential().Password


[string] $User = "administrador"
[string] $File = "C:\mysql_password.txt"
[PSObject] $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $File | ConvertTo-SecureString)


# A�adimos el nombre de la base de datos y la ip del servidor que la aloja para crear una conexi�n

[string]$MySQLDB = 'sistema'
[string]$MySQLHost = '192.168.0.154'
[string]$ConnectionString = "server="+$MySQLHost+";port=3306;user='" + $Credential.UserName + "';password=" + $Credential.GetNetworkCredential().Password + ";database="+$MySQLDB


$connection = New-Object MySql.Data.MySqlClient.MySqlConnection($ConnectionString)

# Lo siguiente es un "try&catch", el ordenador ejecutar� el c�digo de la secci�n try (en este caso abrir una conexi�n), si algo sale
# mal todo lo cambiado por el c�digo volver� a su estado original y ejecutar� el c�digo de catch, que usualmente suele ser devolver
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

# Preparamos un objeto MySqlCommand cuyo valor de su atributo CommandText ser� la query de MySQL (en este caso
# insertar un registro en la tabla t.chasis). 

$MYSQLCommand = New-Object MySql.Data.MySqlClient.MySqlCommand
$MYSQLCommand.Connection = $connection
$hresolution = (Get-CIMInstance Win32_VideoController).CurrentHorizontalResolution
$wresolution = (Get-CIMInstance Win32_VideoController).CurrentVerticalResolution
$hz = (Get-CIMInstance Win32_VideoController).CurrentRefreshRate 
$MYSQLCommand.CommandText='INSERT into `sistema`.`t_screen` (`brand`,`name`,`reference`,`high_px`,`width_px`,`hz`,`inch`,`marker_id`,`start_date`,`end_date`) VALUES("HP","MONITOR","696969","$($hresolution)","$($wresolution)","$($hz)",320,3,"2020-10-08","2020-02-18")'

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

