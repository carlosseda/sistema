#!/usr/bin/pwsh

class Os {

    [string]$Name
    [string]$Version
    [int]$MemorySize
    [int]$Active

    Os($session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Caption}
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Version}
        $this.Active = 1
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

    [Int] getActive()
    {
        return $this.Active
    }

    [String] setName($name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String] setVersion($version)
    {
        $this.Version = $version

        return $this.Version
    }

    [Int] setMemorySize($memorySize)
    {
        $this.MemorySize = $memorySize

        return $this.MemorySize
    }

    [Int] setActive($active)
    {
        $this.MemorySize = $active

        return $this.Active
    }
}