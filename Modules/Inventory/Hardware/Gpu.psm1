#!/snap/bin/pwsh

class Gpu 
{

    [String]$Brand
    [String]$Name
    [Float]$MaxFrequency
    [Float]$MaxMemory
    [Int]$MaxHighResolutionPx
    [Int]$MaxWidthResolutionPx
    [Int]$MaxHz
    [Bool]$Active 

    Gpu([PsObject]$session)
    {
        $this.Brand = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).AdapterCompatibility} 
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).Name}
        $this.MaxFrequency = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).AdapterDACType}
        $this.MaxMemory =  Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).AdapterRam}
        $this.MaxHighResolutionPx = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).CurrentHorizontalResolution}
        $this.MaxWidthResolutionPx = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).CurrentVerticalResolution} 
        $this.MaxHz = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).MaxRefreshRate}
    }

    [String]getBrand()
    {
        return $this.Brand
    }

    [String]getName()
    {
        return $this.Name
    }

    [Float]getMaxFrequency()
    {
        return $this.MaxFrequency
    }

    [Float]getMaxMemory()
    {
        return $this.MaxMemory
    }

    [Int]getMaxHighResolutionPx()
    {
        return $this.MaxHighResolutionPx
    }

    [Int]getMaxWidthResolutionPx()
    {
        return $this.MaxWidthResolutionPx
    }

    [Int]getMaxHz()
    {
        return $this.MaxHz
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

    [Float]setMaxFrequency([Float]$maxFrequency)
    {
        $this.MaxFrequency = $maxFrequency

        return $this.MaxFrequency
    }

    [Float]setMaxMemory([Float]$maxMemory)
    {
        $this.MaxMemory = $maxMemory

        return $this.MaxMemory
    }

    [Int]setMaxHighResolutionPx([Int]$maxHighResolutionPx)
    {
        $this.MaxHighResolutionPx = $MaxHighResolutionPx

        return $this.MaxHighResolutionPx 
    }

    [Int]setMaxWidthResolutionPx([Int]$maxWidthResolutionPx)
    {
        $this.MaxWidthResolutionPx = $maxWidthResolutionPx

        return $this.MaxWidthResolutionPx 
    }

    [Int]setMaxHz([Int]$maxHz)
    {
        $this.MaxHz = $maxHz

        return $this.MaxHz
    }
    
    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}
