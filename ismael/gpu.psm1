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
        $this.Name = (Get-CimInstance -class CIM_VideoController).Name
        $this.MaxFrequency = (Get-CimInstance -class CIM_VideoController).AdapterDACType
        $this.MaxMemory =  (Get-CimInstance -class CIM_VideoController).AdapterRam
        $this.MaxHighResolutionPx = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).CurrentHorizontalResolution}
        $this.MaxWidthResolutionPx = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -class CIM_VideoController).CurrentVerticalResolution} 
        $this.MaxHz = (Get-CimInstance -class CIM_VideoController).MaxRefreshRate
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

      [String] setBrand($Brand)
    {
        $this.Brand = $Brand
    }

    [String] setName($Name)
    {
        $this.Name = $Name
    }

    [Decimal] setMaxFrequency($MaxFrequency)
    {
        $this.MaxFrequency = $MaxFrequency
    }

    [Decimal] setMaxMemory($MaxMemory)
    {
        $this.MaxMemory = $MaxMemory
    }

    [Int] setMaxHighResolutionPx($MaxHighResolutionPx)
    {
        $this.MaxHighResolutionPx = $MaxHighResolutionPx
    }

    [Int] setMaxWidthResolutionPx($MaxWidthResolutionPx)
    {
        $this.MaxWidthResolutionPx = $MaxWidthResolutionPx
    }

    [Int] setMaxHz($MaxHz)
    {
        $this.MaxHz = $MaxHz
    }

    [Int] setTdpW($TdpW)
    {
        $this.TdpW = $TdpW
    }
    
    [Int] setActive($Active)
    {
        $this.Active = $Active
    }
}
