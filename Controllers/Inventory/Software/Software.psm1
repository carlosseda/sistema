#!/snap/bin/pwsh

class Software 
{

    [Int]$SoftwareCategoryId
    [String]$Name
    [String]$Version
    [Float]$MemorySizeMB
    [String]$OsRequeriment
    [Int]$RamGBRequeriment
    [Float]$MemoryMBRequeriment
    [Float]$CpuGBRequeriment
    [Float]$GpuGBRequeriment
    [Bool]$Active

    Software([PsObject]$session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Caption}
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Version}
        $this.MemorySizeMB = Invoke-COmmand -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Memory}
    }

    [Int]getSoftwareCategoryId()
    {
        return $this.SoftwareCategoryId
    }

    [String]getName()
    {
        return $this.Name
    }

    [String]getVersion()
    {
        return $this.Version
    }

    [Float]getMemorySizeMB()
    {
        return $this.MemorySizeMB
    }

    [String]OsRequeriment()
    {
        return $this.OsRequeriment
    }

    [Int]RamGBRequeriment()
    {
        return $this.RamGBRequeriment
    }

    [Float]MemoryMBRequeriment()
    {
        return $this.MemoryMBRequeriment
    }

    [Float]CpuGBRequeriment()
    {
        return $this.CpuGBRequeriment
    }

    [Float]GpuGBRequeriment()
    {
        return $this.GpuGBRequeriment
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Int]getSoftwareCategoryId([Int]$softwareCategoryId)
    {
        $this.SoftwareCategoryId = $softwareCategoryId

        return $this.SoftwareCategoryId
    }

    [String]setName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String]setVersion([String]$version)
    {
        $this.Version = $version

        return $this.Version
    }

    [Float]setMemorySizeMB([Float]$memorySizeMB)
    {
        $this.MemorySizeMB = $MemorySizeMB

        return $this.MemorySizeMB
    }

    [String]OsRequeriment([String]$osRequeriment)
    {
        $this.OsRequeriment = $osRequeriment

        return $this.OsRequeriment
    }

    [Int]RamGBRequeriment([Int]$ramGBRequeriment)
    {
        $this.RamGBRequeriment = $ramGBRequeriment

        return $this.RamGBRequeriment
    }

    [Float]MemoryMBRequeriment([Float]$memoryMBRequeriment)
    {
        $this.MemoryMBRequeriment = $memoryMBRequeriment

        return $this.MemoryMBRequeriment
    }

    [Float]CpuGBRequeriment([Float]$cpuGBRequeriment)
    {
        $this.CpuGBRequeriment = $cpuGBRequeriment

        return $this.CpuGBRequeriment
    }

    [Float]GpuGBRequeriment([Float]$gpuGBRequeriment)
    {
        $this.GpuGBRequeriment = $gpuGBRequeriment

        return $this.GpuGBRequeriment
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}

