#!/usr/bin/pwsh

class Os {

    [string]$Name
    [string]$Version
    [int]$MemorySize

    Os($session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Caption}
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Version}
    }

    [String] getName()
    {
        return $this.Name
    }

    [String] getVersion()
    {
        return $this.Version
    }

    [Int] getMemorySize()
    {
        return $this.MemorySize
    }
}