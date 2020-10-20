#!/usr/bin/pwsh

class pci_connection {

    [int]$channels
    [string]$version
    [int]$motherbiard_id

    Os($session)
    {
        $this.channels = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM-Slot).Tag}
        $this.version = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM-Slot).MaxDatWith}
        $this.motherboard_id = Invoke-Comand -Session $session -ScriptBlock {().}
    }

    [String] getchannels()
    {
        return $this.channels
    }

    [String] getversion()
    {
        return $this.version
    }

    [Int] getmotherboard_id()
    {
        return $this.motherboard_id
    }
}