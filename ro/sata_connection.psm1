#!/usr/bin/pwsh

class sata_connection {

    [enum]$Version
    [int]$Motherboard_id
    [tinyint]$Active


    sata_connection($session)
    {
        $this.Connection = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -Class Win32_IDEController).length;}
    }

    [Enum] getVersion()
    {
        return $this.Version
    }

    [String] getMotherboard_id()
    {
        return $this.Motherboard_id
    }

    [Int] getActive()
    {
        return $this.Active
    }
}