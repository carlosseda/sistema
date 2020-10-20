#!/usr/bin/pwsh

class SataConnection {

    [string]$Version
    [int]$MotherboardId
    [int]$Active

    SataConnection($session)
    {
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -Class Win32_IDEController).length}
    }

    [String] getVersion()
    {
        return $this.Version
    }

    [String] getMotherboardId()
    {
        return $this.MotherboardId
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [String] setVersion($Version)
    {
        $this.Version = $Version
    }

    [String] setMotherboardId($MotherboardId)
    {
        $this.MotherboardId = $MotherboardId
    }

    [Int] setActive($Active)
    {
        $this.Active = $Active
    }
}