#!/snap/bin/pwsh

add-type -path "MySql.Data.dll"

class Mysql {

    [String]$DataBase
    [String]$DataBaseHost
    [String]$User  
    [String]$Password
    [String]$ConnectionString  
    [PSobject]$Connection
    [PsObject]$Command

    Mysql(){

        $this.DataBase = "system"
        $this.DataBaseHost = '127.0.0.1'
        $this.User = "administrador"
        $this.Password = "administrador"
        $this.ConnectionString = "server="+$this.DataBaseHost+";port=3306;user="+$this.User+";password="+$this.Password+";database="+$this.DataBase
        $this.Connection = New-Object MySql.Data.MySqlClient.MySqlConnection($this.ConnectionString)
        $this.Command = New-Object MySql.Data.MySqlClient.MySqlCommand

        $Error.Clear()
        
        try
        {
            $this.Connection.Open()
        }
        catch
        {
            write-warning ("Could not open a connection to Database "+ $this.MySQLDB + " on Host "+$this.MySQLHost+". Error: "+$Error[0].ToString())
        }

        $this.Command.Connection = $this.Connection
    }
}


# $MYSQLCommand.CommandText="INSERT INTO t_os (name,version,memory) VALUES('$os_name','$os_version','13')"

# $Error.Clear()
# try
# {
#     $queryResponse = $MYSQLCommand.ExecuteNonQuery()

#     write ("query Ok")
# }
# catch
# {
#     write-warning ("Could not open a connection to Database $MySQLDB on Host $MySQLHost. Error: "+$Error[0].ToString())
# }
