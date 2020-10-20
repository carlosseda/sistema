#!/usr/bin/pwsh

class processor 
{
    [string]$brand
    [string]$name
    [int]$cores
    [int]$threads
    [int]$bits
    [float]$baseClockSpeed
    [float]$maxClockSpeed
    [string]$memoryType
    [float]$maxMemoryFrequency
    [float]$maxMemorySize
    [float]$maxMemorySlots
    [float]$PCIEVersion
    [int]$active

    processor($session)
    {
        $this.brand = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32.Processor).Manufacturer}
        $this.name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32.Processor).Name}
        $this.cores = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32.Processor).NumberOfCores}
        $this.threads = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32.Processor).ThreadCount}
        $this.bits = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32.Processor).AddressWidth}
        $this.maxClockSpeed = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32.Processor).MaxClockSpeed}
        $this.active = 1
    }

    [float] getBaseClockSpeed()
    {
        return $this.baseClockSpeed
    }

    [string] getMemoryType()
    {
        return $this.memoryType
    }

    [float] getMaxMemoryFrequency()
    {
        return $this.maxMemoryFrequency
    }

    [float] getMaxMemorySize()
    {
        return $this.maxMemorySize
    }

    [float] getMaxMemorySlots()
    {
        return $this.maxMemorySlots
    }

    [float] getPCIEVersion()
    {
        return $this.PCIEVersion
    }

    [int] getActive()
    {
        return $this.Active
    }

    [float] setBaseClockSpeed($baseClockSpeed)
    {
        $this.baseClockSpeed = $baseClockSpeed
    }

    [string] setMemoryType()
    {
        $this.memoryType = $memoryType
    }

    [float] setMaxMemoryFrequency($maxMemoryFrequency)
    {
        $this.maxMemoryFrequency = $maxMemoryFrequency
    }

    [float] setMaxMemorySize($maxMemorySize)
    {
        $this.maxMemorySize = $maxMemorySize
    }

    [float] setMaxMemorySlots($maxMemorySlots)
    {
        $this.maxMemorySlots = $maxMemorySlots
    }

    [float] setPCIEVersion($PCIEVersion)
    {
        $this.PCIEVersion = $PCIEVersion
    }

    [int] setActive($active)
    {
        $this.active = $active
    }
}