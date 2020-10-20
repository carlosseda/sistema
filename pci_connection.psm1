#!/usr/bin/pwsh

class PciConnection {

    [int]$Channels
    [string]$Version
    [int]$MotherboardId

    PciConnection($session)
    {
        $this.channels = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM-Slot).Tag}
        $this.version = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM-Slot).MaxDatWith}
        $this.motherboardId = Invoke-Comand -Session $session -ScriptBlock {().}
    }

    [String] getChannels()
    {
        return $this.channels
    }

    [String] getVersion()
    {
        return $this.version
    }

    [Int] getMotherboardId()
    {
        return $this.motherboard_id
    }
}