#!/snap/bin/pwsh

class Os 
{

    [String]$Name
    [String]$Version
    [Float]$MemorySizeGB
    [Bool]$Active

    Os([PsObject]$session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Caption}
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Version}
    }

    [String]getName()
    {
        return $this.Name
    }

    [String]getVersion()
    {
        return $this.Version
    }

    [Float]getMemorySizeGB()
    {
        return $this.MemorySizeGB
    }

    [Int]getActive()
    {
        return $this.Active
    }

    [String]setName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String] setVersion([String]$version)
    {
        $this.Version = $version

        return $this.Version
    }

    [Float]setMemorySizeGB([Float]$memorySizeGB)
    {
        $this.MemorySizeGB = $memorySizeGB

        return $this.MemorySizeGB
    }

    [Bool]setActive([Bool]$active)
    {
        $this.MemorySize = $active

        return $this.Active
    }
}