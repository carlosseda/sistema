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
$MYSQLCommand.CommandText='INSERT INTO `sistema`.`t_user` (`name`, `surname`, `email`, `rol_id`, `start_date`, `end_date`, `start_time`, `end_time`) VALUES("Carlos","Seda","carlosseda@gmail.com",4,"2020-10-07","2020-10-07","10:30:33","10:30:33")'


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
