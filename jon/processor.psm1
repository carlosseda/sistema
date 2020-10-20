#!/usr/bin/pwsh

class Processor 
{
    [string]$Brand
    [string]$Name
    [int]$Cores
    [int]$Threads
    [int]$Bits
    [float]$BaseClockSpeed
    [float]$MaxClockSpeed
    [string]$MemoryType
    [float]$MaxMemoryFrequency
    [float]$MaxMemorySize
    [float]$MaxMemorySlots
    [float]$PCIEVersion

    Processor($session)
    {
        $this.Brand = Invoke-Command -Session $session -ScriptBlock {Get-CIMInstance Win32.Processor).Manufacturer}
        $this.Name = Invoke-Command -Session $session -ScriptBlock {Get-CIMInstance Win32.Processor).Name}
        $this.Cores = Invoke-Command -Session $session -ScriptBlock {Get-CIMInstance Win32.Processor).NumberOfCores}
        $this.Threads = Invoke-Command -Session $session -ScriptBlock {Get-CIMInstance Win32.Processor).ThreadCount}
        $this.Bits = Invoke-Command -Session $session -ScriptBlock {Get-CIMInstance Win32.Processor).AddressWidth}
        $this.MaxClockSpeed = Invoke-Command -Session $session -ScriptBlock {Get-CIMInstance Win32.Processor).MaxClockSpeed}
    }

    [float] getBaseClockSpeed()
    {
        return $this.BaseClockSpeed
    }

    [string] getMemoryType()
    {
        return $this.MemoryType
    }

    [float] getMaxMemoryFrequency()
    {
        return $this.MaxMemoryFrequency
    }

    [float] getMaxMemorySize()
    {
        return $this.MaxMemorySize
    }

    [float] getMaxMemorySlots()
    {
        return $this.MaxMemorySlots
    }

    [float] getPCIEVersion()
    {
        return $this.PCIEVersion
    }
}