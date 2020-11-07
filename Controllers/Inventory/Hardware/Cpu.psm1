#!/snap/bin/pwsh

class Cpu
{
    
    [String]$Brand
    [String]$Name
    [Int]$Cores
    [Int]$Threads
    [Int]$Bits
    [Float]$MaxClockSpeed
    [String]$MemoryType
    [Float]$MaxMemoryFrequency
    [Float]$MaxMemorySize
    [Int]$MaxMemorySlots
    [Float]$PciExpressVersion
    [Bool]$Active

    Cpu([PsObject]$session)
    {
        $this.Brand = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_Processor).Manufacturer}
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_Processor).Name}
        $this.Cores = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_Processor).NumberOfCores}
        $this.Threads = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_Processor).ThreadCount}
        $this.Bits = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_Processor).AddressWidth}
        $this.MaxClockSpeed = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_Processor).MaxClockSpeed}
    }

    [String]getBrand()
    {
        return $this.Brand
    }

    [String]getName()
    {
        return $this.Name
    }

    [Int]getCores()
    {
        return $this.Cores
    }

    [Int]getThreads()
    {
        return $this.Threads
    }

    [Int]getBits()
    {
        return $this.Bits
    }

    [Float]getMaxClockSpeed()
    {
        return $this.MaxClockSpeed
    }

    [String]getMemoryType()
    {
        return $this.MemoryType
    }

    [Float]getMaxMemoryFrequency()
    {
        return $this.MaxMemoryFrequency
    }

    [Int]getMaxMemorySizeGB()
    {
        return $this.MaxMemorySizeGB
    }

    [Int]getMaxMemorySlots()
    {
        return $this.MaxMemorySlots
    }

    [Float]getPciExpressVersion()
    {
        return $this.PciExpressVersion
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setBrand([String]$brand)
    {
        $this.Brand = $brand

        return $this.Brand
    }

    [String]setName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [Int]setCores([Int]$cores)
    {
        $this.Cores = $cores

        return $this.Cores
    }

    [Int]setThreads([Int]$threads)
    {
        $this.Threads = $threads

        return $this.Threads
    }

    [Int]setBits([Int]$bits)
    {
        $this.Bits = $bits

        return $this.Bits
    }

    [String]setMemoryType([String]$memoryType)
    {
        $this.MemoryType = $memoryType

        return $this.MEmoryType
    }

    [Float]setMaxMemoryFrequency([Float]$maxMemoryFrequency)
    {
        $this.MaxMemoryFrequency = $maxMemoryFrequency

        return $this.MaxMemoryFrequency
    }

    [Int]setMaxMemorySizeGB([Int]$maxMemorySizeGB)
    {
        $this.MaxMemorySizeGB = $maxMemorySizeGB

        return $this.maxMemorySizeGB
    }

    [Int]setMaxMemorySlots([Int]$maxMemorySlots)
    {
        $this.MaxMemorySlots = $maxMemorySlots

        return $this.MaxMemorySlots
    }

    [Float]setPCIEVersion([Float]$PCIEVersion)
    {
        $this.PciExpressVersion = $PCIEVersion

        return $this.PciExpressVersion
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active
        
        return $this.Active
    }
}