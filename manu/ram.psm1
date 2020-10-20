#!/usr/bin/pwsh

class Ram {

    [String]$Brand
    [String]$Name
    [String]$FormFactor
    [String]$MemoryType
    [Int]$Size
    [Int]$Cl 
    [Int]$MaxVoltage
    [Int]$BaseVoltage
    [Decimal]$BaseFrequency
    [Decimal]$MaxFrequency
    [Int]$Active


    Ram($session)
    {
        $this.Brand = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).Manufacturer}
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).Name}
        $this.FormFactor = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).FormFactor}
        $this.MemoryType = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).MemoryType}
        $this.Size = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).Capacity}
        $this.MaxVoltage = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).MaxVoltage}
        $this.BaseVoltage = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).MinVoltage}
        $this.BaseFrequency = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).ConfiguredClockSpeed}
        $this.Active = 1
    }

    [String] getBrand()
    {
        return $this.Brand
    }

    [String] getName()
    {
        return $this.Name
    }

    [String] getFormFactor()
    {
        return $this.FormFactor
    }

    [String] getMemoryType()
    {
        return $this.MemoryType
    }

    [Int] getSize()
    {
        return $this.Size
    }

    [Int] getMaxVoltage()
    {
        return $this.MaxVoltage
    }

    [Int] getMinVoltage()
    {
        return $this.MinVoltage
    }

    [Decimal] getBaseFrequency()
    {
        return $this.BaseFrequency
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [String] setBrand($Brand)
    {
        $this.Brand=$Brand
    }

    [String] setName($Name)
    {
        $this.Name=$Name
    }

    [String] setFormFactor($FormFactor)
    {
        $this.FormFactor=$FormFactor
    }

    [String] setMemoryType($MemoryType)
    {
        $this.MemoryType=$MemoryType
    }

    [Int] setSize($Size)
    {
        $this.Size=$Size
    }

    [Int] setMaxVoltage($MaxVoltage)
    {
        $this.MaxVoltage=$MaxVoltage
    }

    [Int] setMinVoltage($MinVoltage)
    {
        $this.MinVoltage=$MinVoltage
    }

    [Decimal] setBaseFrequency($BaseFrequency)
    {
        $this.BaseFrequency=$BaseFrequency
    }

    [Int] setActive($Active)
    {
        $this.Active=$Active
    }
}