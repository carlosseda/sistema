[void][System.Reflection.Assembly]::LoadWithPartialName("MySql.Data")



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
$MYSQLCommand.CommandText='INSERT into `sistema`.`t_net_connection` (`device`,`device_id`,`net_id`,`wifi_ssid`,`rj_entry`,`ip`,`dns`,`subnet_mask`,`gateway`) VALUES("computer","1","1","muevete3","1","192.168.0.120","1.1.1.1","255.255.255.0","127.0.0.1")'


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

