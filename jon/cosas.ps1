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
# "administrador" | ConvertTo-SecureString -AsPlainText -Force | ConvertFrom-SecureString | Out-File "C:\mysql_password.txt"
#
# Finalmente creamos un objeto PSCredential en la variable $cred que contendrá nuestro usuario ($cred.UserName) como nuestra
# contraseña en texto plano $cred.GetNetworkCredential().Password
# 

[string] $User = "administrador"
[string] $File = "C:\mysql_password.txt"
[PSObject] $Credential = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList $User, (Get-Content $File | ConvertTo-SecureString)


# Añadimos el nombre de la base de datos y la ip del servidor que la aloja para crear una conexión

[string]$MySQLDB = 'sistema'
[string]$MySQLHost = '192.168.0.154'
[string]$ConnectionString = "server="+$MySQLHost+";port=3306;user='" + $Credential.UserName + "';password=" + $Credential.GetNetworkCredential().Password + ";database="+$sMySQLDB


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
$modify = Read-Host "Quieres modificar la base de datos?"

while ($modify -eq 'yes')
{
    switch( $tabla )
    {
        t_backup{
            
        }
        t_base_installation{
            
        }
        t_buy{
            
        }
        t_chasis{
            
        }
        t_computer{
            #$var = Get-CimInstance Win32_ComputerSystem;
            $par1=Read-Host "Portatil o de sobremesa"
            [Date]$par2=Read-Host "Primera vez que se usó"
            [Date]$par3=Read-Host "Última vez que se usó"
            [int]$par4=Read-Host "Id del código de barras"
            [int]$par5=Read-Host "Id del sitio"
            [int]$par6=Read-Host "Id del espacio asignado"
            [int]$par7=Read-Host "Id de la mesa"
            [int]$par8 = Read-Host "Activado"
            $MYSQLCommand.CommandText='INSERT into `sistema`.`$($tabla)` (`reference`,`type`,`start_use`,`end_use`,`marker_id`,`place_id`,`space_id`,`table_id`,`active`) VALUES("$($var.Name)","$($par1)","$($par2)","$($par3)","$($par4)","$($par5)","$($par6)","$($par7)","$($par8)")'
        }
        t_computer_component{
            
        }
        t_computer_os{
            
        }
        t_computer_os_license{
        
        }
        t_computer_session{
        
        }
        t_computer_software{
            [int]$par1=Read-Host "Id del ordenador"
            [int]$par2=Read-Host "Id del software"
            [int]$par3=Read-Host "Activo"
            $MYSQLCommand.CommandText='INSERT into `sistema`.`$($tabla)` (`computer_id`,`software_id`,`active`) VALUES("$($par1)","$($par2)","$($par3)")'
        }
        t_computer_software_license{
        
        }
        t_cpu{
            $var = Get-CimInstance Win32_Processor;
            [float]$par1 = Read-Host "Frecuencia base"
            $par2 = Read-Host "Tipo de memoria"
            [float]$par3 = Read-Host "Máxima frecuencia de la RAM"
            [float]$par4 = Read-Host "Máxima memoria de la RAM"
            [float]$par5 = Read-Host "Máximos slots de la RAM"
            [float]$par6 = Read-Host "Versión de PCIE"
            [int]$par7 = Read-Host "Activado"
            $MYSQLCommand.CommandText='INSERT into `sistema`.`$($tabla)` (`brand`,`name`,`cores`,`bits`,`threads`,`turbo_frequency`,`base_frequency`,`memory_type`,`max_memory_frequency`,`max_memory_size`,`max_memory_slots`,`pci_express_version`,`active`) VALUES("$($var.Manufacturer)","$($var.Name)","$($var.NumberOfCores)","$($var.AddressWidth)","$($var.NumberOfLogicalProcessors)","$($var.MaxClockSpeed)","$($par1)","$($par2)","$($par3)","$($par4)","$($par5)","$($par6)","$($par7)")'
        }
        t_entry_supply{
        
        }
        t_exit_supply{
        
        }
        t_fan{
        
        }
        t_gpu{
        
        }
        t_graphics_connection{}
        t_incidence{}
        t_keyboard{}
        t_manteinance{}
        t_marker{}
        t_mobile{}
        t_motherboard{}
        t_mouse{}
        t_net{}
        t_net_connection{}
        t_os{}
        t_os_license{}
        t_os_session{}
        t_partition{}
        t_pci_connection{}
        t_place{}
        t_printer{}
        t_projector{}
        t_ram{}
        t_ram_connection{}
        t_rol{}
        t_sata_connection{}
        t_screen{}
        t_script_error{}
        t_session{}
        t_software{}
        t_software_category{}
        t_software_license{}
        t_space{}
        t_supply_power{}
        t_table{}
        t_tablet{}
        t_usb_connection{}
        t_user{}
        t_user_mobile{}
        t_user_rol{}
        t_user_session{}
        t_user_tablet{}
        t_user_tracking{}
        default{
            echo "Esta tabla no existe"
        }
    }
    $modify = Read-Host "Quieres seguir modificando la base de datos?"
}


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

