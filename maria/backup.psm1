#!/usr/bin/pwsh

class Backup {

    [string]$OriginPath
    [string]$DestinationPath
    [datetime]$DatetimeBackup
    [int]$Errorcode 
    [int]$Active 

    Backup($session)
    {

    }

    [String] setOriginPath($OriginPath)
    {
        $this.OriginPath =$OriginPath
    }
    [String] setDestinationPath($DestinationPath)
    {
        $this.DestinationPath = $DestinationPath
    }
    [datetime] setDatetimeBackup($DatetimeBackup)
    {
        $this.DatetimeBackup = $DatetimeBackup
    }
    [Int] setErrorcode($Errorcode)
    {
        $this.Errorcode = $Errorcode 
    }
    [Int] setActive($Active)
    {
        $this.Active =$Active
    }
    [String] getOriginPath()
    {
        return $this.OriginPath
    }
    [String] getDestinationPath()
    {
        return $this.DestinationPath
    }
    [datetime] getDatetimeBackup()
    {
        return $this.DatetimeBackup
    }
    [Int] getError()
    {
        return $this.Error 
    }
    [Int] getActive()
    {
        return $this.Active
    }
}