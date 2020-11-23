#!/snap/bin/pwsh

class RamConnection 
{

    [String]$BankLabel
    [String]$MemoryType
    [Float]$MaxMemoryFrequency
    [Float]$BaseMemoryFrequency
    [Int]$MotherboardId

    [String]getBankLabel()
    {
        return $this.BankLabel
    }

    [String]getMemoryType()
    {
        return $this.MemoryType
    }

    [Float]getMaxMemoryFrequency()
    {
        return $this.MaxMemoryFrequency
    }

    [Float]getBaseMemoryFrequency()
    {
        return $this.BaseMemoryFrequency
    }

    [Int]getMotherboardId()
    {
        return $this.MotherboardId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setBankLabel([String]$bankLabel)
    {
        $this.BankLabel = $bankLabel

        return $this.BankLabel
    }

    [String]setMemoryType([String]$memoryType)
    {
        $this.MemoryType = $memoryType

        return $this.MemoryType
    }

    [Float]setMaxMemoryFrequency([Float]$maxMemoryFrequency)
    {
        $this.MaxMemoryFrequency = $maxMemoryFrequency

        return $this.MaxMemoryFrequency
    }

    [Float]setBaseMemoryFrequency([Float]$baseMemoryFrequency)
    {
        $this.BaseMemoryFrequency = $baseMemoryFrequency

        return $this.BaseMemoryFrequency
    }

    [Int]setMotherboardId([Int]$motherboardId)
    {
        $this.MotherboardId = $motherboardId

        return $this.MotherboardId
    }

    [Bool] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}

