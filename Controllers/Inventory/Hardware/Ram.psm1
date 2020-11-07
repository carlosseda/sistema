#!/snap/bin/pwsh

class Ram {

    [String]$Brand
    [String]$Name
    [String]$FormType
    [String]$MemoryType
    [Int]$SizeGB
    [Int]$Cl 
    [Int]$MaxVoltage
    [Int]$BaseVoltage
    [Float]$BaseFrequency
    [Float]$MaxFrequency
    [Bool]$Active

    Ram([PsObject]$session)
    {
        $this.Brand = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).Manufacturer}
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).Name}
        $this.FormType = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).FormFacto}
        $this.MemoryType = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).MemoryType}
        $this.SizeGB = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).Capacity}
        $this.MaxVoltage = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).MaxVoltage}
        $this.BaseVoltage = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).MinVoltage}
        $this.BaseFrequency = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_PhysicalMemory).ConfiguredClockSpeed}

        switch($this.FormType){

            8{
                $this.FormType = "DIMM" 
            }
            12{
                $this.FormType = "SODIMM"
            }
            default{
                $this.FormType = ""
            }
        }

        switch($this.MemoryType){

            20{
                $this.MemoryType = "DDR1" 
            }
            21{
                $this.MemoryType  ="DDR2"
            }
            24{
                $this.MemoryType= "DDR3"
            }
            26{
                $this.MemoryType= "DDR4"
            }
            default{
                $this.MemoryType= ""
            }
        }
    }

    [String]getBrand()
    {
        return $this.Brand
    }

    [String]getName()
    {
        return $this.Name
    }

    [String]getFormType()
    {
        return $this.FormFactor
    }

    [String]getMemoryType()
    {
        return $this.MemoryType
    }

    [Int]getSizeGB()
    {
        return $this.SizeGB
    }

    [Int]getMaxVoltage()
    {
        return $this.MaxVoltage
    }

    [Int]getMinVoltage()
    {
        return $this.MinVoltage
    }

    [Float]getBaseFrequency()
    {
        return $this.BaseFrequency
    }

    [Float]getMaxFrequency()
    {
        return $this.MaxFrequency
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

    [String]setFormType([String]$formType)
    {
        $this.FormType = $formType

        return $this.FormType
    }

    [String]setMemoryType([String]$memoryType)
    {
        $this.MemoryType = $memoryType

        return $this.MemoryType
    }

    [Int]setSizeGB([Int]$sizeGB)
    {
        $this.SizeGB = $sizeGB

        return $this.SizeGB
    }

    [Int]setMaxVoltage([Int]$maxVoltage)
    {
        $this.MaxVoltage = $maxVoltage

        return $this.MaxVoltage
    }

    [Int]setMinVoltage([Int]$minVoltage)
    {
        $this.MinVoltage = $minVoltage

        return $this.MinVoltage

    }

    [Float]setBaseFrequency([Float]$baseFrequency)
    {
        $this.BaseFrequency = $baseFrequency

        return $this.BaseFrequency
    }

    [Float]setMaxFrequency([Float]$maxFrequency)
    {
        $this.MaxFrequency = $maxFrequency

        return $this.BaseFrequency
    }

    [Bool] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}