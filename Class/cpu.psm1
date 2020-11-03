#!/usr/bin/pwsh

class processor 
{
    [string]$Brand
    [string]$Name
    [int]$Cores
    [int]$Threads
    [int]$Bits
    [decimal]$BaseClockSpeed
    [decimal]$MaxClockSpeed
    [string]$MemoryType
    [decimal]$MaxMemoryFrequency
    [decimal]$MaxMemorySize
    [decimal]$MaxMemorySlots
    [decimal]$PciExpressVersion
    [int]$Active

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

    [String] getBrand()
    {
        return $this.Brand
    }

    [String] getName()
    {
        return $this.Name
    }

    [int] getCores()
    {
        return $this.Cores
    }

    [int] getThreads()
    {
        return $this.Threads
    }

    [int] getBits()
    {
        return $this.Bits
    }

    [decimal] getBaseClockSpeed()
    {
        return $this.BaseClockSpeed
    }

    [decimal] getMaxClockSpeed()
    {
        return $this.MaxClockSpeed
    }

    [string] getMemoryType()
    {
        return $this.MemoryType
    }

    [decimal] getMaxMemoryFrequency()
    {
        return $this.MaxMemoryFrequency
    }

    [decimal] getMaxMemorySize()
    {
        return $this.MaxMemorySize
    }

    [decimal] getMaxMemorySlots()
    {
        return $this.MaxMemorySlots
    }

    [decimal] getPciExpressVersion()
    {
        return $this.PciExpressVersion
    }

    [int] getActive()
    {
        return $this.Active
    }

    [String] setBrand($brand)
    {
        $this.Brand = $brand

        return $this.Brand
    }

    [String] setName($name)
    {
        $this.Name = $name

        return $this.Name
    }

    [int] setCores($cores)
    {
        $this.Cores = $cores

        return $this.Cores
    }

    [int] setThreads($threads)
    {
        $this.Threads = $threads

        return $this.Threads
    }

    [int] setBits($bits)
    {
        $this.Bits = $bits

        return $this.Bits
    }

    [decimal] setBaseClockSpeed($baseClockSpeed)
    {
        $this.BaseClockSpeed = $baseClockSpeed

        return $this.BaseClockSpeed
    }

    [string] setMemoryType($memoryType)
    {
        $this.MemoryType = $memoryType

        return $this.MEmoryType
    }

    [decimal] setMaxMemoryFrequency($maxMemoryFrequency)
    {
        $this.MaxMemoryFrequency = $maxMemoryFrequency

        return $this.MaxMemoryFrequency
    }

    [decimal] setMaxMemorySize($maxMemorySize)
    {
        $this.MaxMemorySize = $maxMemorySize

        return $this.maxMemorySize
    }

    [decimal] setMaxMemorySlots($maxMemorySlots)
    {
        $this.MaxMemorySlots = $maxMemorySlots

        return $this.MaxMemorySlots
    }

    [decimal] setPCIEVersion($PCIEVersion)
    {
        $this.PciExpressVersion = $PCIEVersion

        return $this.PciExpressVersion
    }

    [int] setActive($active)
    {
        $this.Active = $active
        
        return $this.Active
    }
}