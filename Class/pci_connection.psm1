#!/usr/bin/pwsh

class PciConnection {

    [int]$Channels
    [string]$Version
    [int]$MotherboardId

    PciConnection($session)
    {
        $this.channels = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM-Slot).Tag}
        $this.version = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM-Slot).MaxDatWith}
    }

    [String] getChannels()
    {
        return $this.Channels
    }

    [String] getVersion()
    {
        return $this.Version
    }

    [Int] getMotherboardId()
    {
        return $this.MotherboardId
    }

    [String] setChannels($channels)
    {
        $this.Channels = $channels

        return $this.Channels
    }

    [String] setVersion($version)
    {
        $this.Version = $version

        return $this.Version
    }

    [Int] setMotherboardId($motherboadId)
    {
        $this.MotherboardId = $motherboadId

        return $this.MotherboardId 
    }
}