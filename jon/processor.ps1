$processor = Get-CimInstance Win32_Processor;
$processorfile = "C:\Inventario\processor.txt";
if (!(Test-Path $processorfile -PathType Leaf))
{
    $processor.Manufacturer + " " + $processor.Name + " " + $processor.NumberOfCores + " " + $processor.NumberOfLogicalProcessors + " " + $processor.AddressWidth + " " + $processor.MaxClockSpeed | Out-File -FilePath "C:\Inventario\processor.txt" -NoNewline
}

[string] $User = "administrador"
[string] $File = "C:\Inventario\mysql_password.txt"
[PSObject] $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $File | ConvertTo-SecureString)

[string]$MySQLDB = 'sistema'
[string]$MySQLHost = '192.168.0.154'
[string]$ConnectionString = "server="+$MySQLHost+";port=3306;user='" + $Credential.UserName + "';password=" + $Credential.GetNetworkCredential().Password + ";database="+$sMySQLDB


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
$processorfileinfo = Get-Content -Path $processorfile
$processorinfo = $processor.Manufacturer + " " + $processor.Name + " " + $processor.NumberOfCores + " " + $processor.NumberOfLogicalProcessors + " " + $processor.AddressWidth + " " + $processor.MaxClockSpeed
$query = "SELECT * FROM sistema.t_cpu"
$command = New-Object MySql.Data.MySqlClient.MySqlCommand($query, $connection)
$dataAdapter = New-Object MySql.Data.MySqlClient.MySqlDataAdapter($command)
$dataSet = New-Object System.Data.DataSet
$recordCount = $dataAdapter.Fill($dataSet, "data")   
$rownum = $dataSet.Tables[0].Rows.Count
if ($rownum -eq 0)
{             
    $MYSQLCommand.CommandText='INSERT into `sistema`.`$($tabla)` (`brand`,`name`,`cores`,`bits`,`threads`,`turbo_frequency`) VALUES("$($processor.Manufacturer)","$($processor.Name)","$($processor.NumberOfCores)","$($processor.AddressWidth)","$($processor.NumberOfLogicalProcessors)","$($processor.MaxClockSpeed)")'
} else {
    if ($processorfileinfo -ne $processorinfo)
    {                                
        $MYSQLCommand.CommandText='INSERT into `sistema`.`$($tabla)` (`brand`,`name`,`cores`,`bits`,`threads`,`turbo_frequency`) VALUES("$($processor.Manufacturer)","$($processor.Name)","$($processor.NumberOfCores)","$($processor.AddressWidth)","$($processor.NumberOfLogicalProcessors)","$($processor.MaxClockSpeed)")'
    }
}