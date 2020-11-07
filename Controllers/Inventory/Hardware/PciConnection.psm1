#!/snap/bin/pwsh

class PciConnection 
{

    [Int]$Channels
    [String]$Version
    [Int]$MotherboardId
    [Bool]$Active

    PciConnection([PsObject]$session)
    {
        $this.channels = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM-Slot).Tag}
        $this.version = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM-Slot).MaxDatWith}
    }

    [Int]getChannels()
    {
        return $this.Channels
    }

    [String]getVersion()
    {
        return $this.Version
    }

    [Int]getMotherboardId()
    {
        return $this.MotherboardId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setVersion([String]$version)
    {
        $this.Version = $version

        return $this.Version
    }

    [Int]setChannels([Int]$channels)
    {
        $this.Channels = $channels

        return $this.Channels
    }

    [Int]setMotherboardId([Int]$motherboadId)
    {
        $this.MotherboardId = $motherboadId

        return $this.MotherboardId 
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}