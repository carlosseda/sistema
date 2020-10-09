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

$brand = (Get-CIMInstance Win32_PhysicalMemory).Manufacturer
$name = (Get-CIMInstance Win32_PhysicalMemory).Name
$form_type = (Get-CIMInstance Win32_PhysicalMemory).FormFactor

switch( $form_type )
    {
        8{
            $form_type="DIMM" 
        }
        12{
            $form_type="SODIMM"
        }
        default{
            $form_type=""
        }
    }

$type = (Get-CIMInstance Win32_PhysicalMemory).MemoryType

switch( $type )
    {
        20{
            $type="DDR1" 
        }
        21{
            $type="DDR2"
        }
        24{
            $type="DDR3"
        }
        26{
            $type="DDR4"
        }
        default{
            $type=""
        }
    }

$size = (Get-CIMInstance Win32_PhysicalMemory).Capacity
$max_voltage = (Get-CIMInstance Win32_PhysicalMemory).MaxVoltage
$base_voltage = (Get-CIMInstance Win32_PhysicalMemory).MinVoltage

$MYSQLCommand = New-Object MySql.Data.MySqlClient.MySqlCommand
$MYSQLCommand.Connection = $connection
$MYSQLCommand.CommandText='INSERT into `sistema`.`t_ram` (`brand`,`name`,`form_type`,`type`,`size`,`cl`,`max_voltage`,`base_voltage`,`base_frequency`,`max_frequency`) VALUES("$($brand)","$($name)","$($form_type)","$($type)","$($size)","","$($max_voltage)","$($base_voltage)","","")'


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