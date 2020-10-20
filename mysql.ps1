#!/usr/bin/pwsh

add-type -path "MySql.Data.dll"

[string]$MySQLDB = 'sistema'
[string]$MySQLHost = '127.0.0.1'
[string]$ConnectionString = "server="+$MySQLHost+";port=3306;user='administrador';password='administrador';database="+$MySQLDB

$connection = New-Object MySql.Data.MySqlClient.MySqlConnection($ConnectionString)

$Error.Clear()
try
{
    $connection.Open()
}
catch
{
    write-warning ("Could not open a connection to Database $MySQLDB on Host $MySQLHost. Error: "+$Error[0].ToString())
}

$MYSQLCommand = New-Object MySql.Data.MySqlClient.MySqlCommand
$MYSQLCommand.Connection = $connection

$MYSQLCommand.CommandText="INSERT INTO t_os (name,version,memory) VALUES('$os_name','$os_version','13')"

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
