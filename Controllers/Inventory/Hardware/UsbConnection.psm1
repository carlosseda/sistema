#!/snap/bin/pwsh

class UsbConnection
{
    [String]$Version
    [Int]$MotherboardId
    [Bool]$Active

    UsbConnection([PsObject]$session)
    {
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_USBDevice).USBVersion}
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