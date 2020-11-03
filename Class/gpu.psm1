#!/usr/bin/pwsh

class Gpu {

    [string]$Brand
    [string]$Name
    [decimal]$MaxFrequency
    [decimal]$MaxMemory
    [int]$MaxHighResolutionPx
    [int]$MaxWidthResolutionPx
    [int]$MaxHz
    [int]$TdpW
    [int]$Active 

    Gpu($session)
    {
        $this.Brand = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).AdapterCompatibility} 
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).Name}
        $this.MaxFrequency = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).AdapterDACType}
        $this.MaxMemory =  Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).AdapterRam}
        $this.MaxHighResolutionPx = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).CurrentHorizontalResolution}
        $this.MaxWidthResolutionPx = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).CurrentVerticalResolution} 
        $this.MaxHz = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).MaxRefreshRate}
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

    [Decimal] getMaxFrequency()
    {
        return $this.MaxFrequency
    }

    [Decimal] getMaxMemory()
    {
        return $this.MaxMemory
    }

    [Int] getMaxHighResolutionPx()
    {
        return $this.MaxHighResolutionPx
    }

    [Int] getMaxWidthResolutionPx()
    {
        return $this.MaxWidthResolutionPx
    }

    [Int] getMaxHz()
    {
        return $this.MaxHz
    }

    [Int] getTdpW()
    {
        return $this.TdpW
    }

    [Int] getActive()
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

    [Decimal] setMaxFrequency($maxFrequency)
    {
        $this.MaxFrequency = $maxFrequency

        return $this.MaxFrequency
    }

    [Decimal] setMaxMemory($maxMemory)
    {
        $this.MaxMemory = $maxMemory

        return $this.MaxMemory
    }

    [Int] setMaxHighResolutionPx($maxHighResolutionPx)
    {
        $this.MaxHighResolutionPx = $MaxHighResolutionPx

        return $this.MaxHighResolutionPx 
    }

    [Int] setMaxWidthResolutionPx($maxWidthResolutionPx)
    {
        $this.MaxWidthResolutionPx = $maxWidthResolutionPx

        return $this.MaxWidthResolutionPx 
    }

    [Int] setMaxHz($maxHz)
    {
        $this.MaxHz = $maxHz

        return $this.MaxHz
    }

    [Int] setTdpW($tdpW)
    {
        $this.TdpW = $tdpW

        return $this.TdpW
    }
    
    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}
