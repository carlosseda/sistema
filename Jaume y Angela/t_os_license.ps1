[void][System.Reflection.Assembly]::LoadWithPartialName("MySql.Data")

[string] $license = (Get-CimInstance Win32_OperatingSystem).SerialNumber
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
$MYSQLCommand.CommandText='INSERT into `sistema`.`t_os_license` (`license`) VALUES("$($license)")'


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