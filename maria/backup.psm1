#!/usr/bin/pwsh

class Backup {

    [string]$OriginPath
    [string]$DestinationPath
    [datetime]$DatetimeBackup
    [int]$Error 
    [int]$Active 

    Backup($session)
    {
        $this.OriginPath = 
        $this.DestinationPath =
        $this.DatetimeBackup =
        $this.Error = 
        $this.Active = 
    }

    [String] setOriginPath($OriginPath)
    {
        $this.OriginPath
    }

    [String] setDestinationPath($DestinationPath)
    {
        $this.DestinationPath
    }

    [datetime] setDatetimeBackup($DatetimeBackup)
    {
        $this.DatetimeBackup
    }
    [Int] setError($Error)
    {
        $this.Error 
    }
    [Int] setActive($Active)
    {
        $this.Active
    }
}