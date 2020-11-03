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
        return $this.Errorcode
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [String] setOriginPath($originPath)
    {
        $this.OriginPath = $originPath

        return $this.OriginPath
    }
    [String] setDestinationPath($destinationPath)
    {
        $this.DestinationPath = $destinationPath

        return $this.DestinationPath
    }
    [datetime] setDatetimeBackup($datetimeBackup)
    {
        $this.DatetimeBackup = $datetimeBackup

        return $this.DatetimeBackup
    }
    [Int] setErrorcode($errorcode)
    {
        $this.Errorcode = $errorcode 

        return $this.Errorcode
    }
    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}