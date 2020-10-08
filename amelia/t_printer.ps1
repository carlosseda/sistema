

[string] $User = "administrador"
[string] $File = "C:\mysql_password.txt"
[PSObject] $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $File | ConvertTo-SecureString)



[string]$MySQLDB = 'sistema'
[string]$MySQLHost = '192.168.0.154'
[string]$ConnectionString = "server="+$MySQLHost+";port=3306;user='" + $Credential.UserName + "';password=" + $Credential.GetNetworkCredential().Password + ";database="+$MySQLDB


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
$MYSQLCommand.CommandText='INSERT into `sistema`.`t_printer` (`brand`,`name`,`reference`,`multifunction`,`scanner`,`double_sided`,`wifi`,`consumable`,`color`,`max_print_size`,`marker_id`,`space_id`,`start_date`,`end_date`) VALUES("HEWLETT-PACKARD","LaserJet M479","LASERJET PRO M479FDN",1,1,1,1,"toner",1,"A3","1","2","2020-10-07","2020-10-07")'


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

