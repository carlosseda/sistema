#!/usr/bin/pwsh

class screen {

    [string]$Brand
    [string]$Name
    [string]$Reference
    [int]$Highpx
    [int]$Widthpx
    [int]$Hz
    [int]$Inch
    [int]$Markerid
    [int]$Active

    screen($session)
    {
        $this.Widthpx = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentHorizontalResolution}
        $this.Highpx = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentVerticalResolution}
        $this.Hz = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentRefreshRate}
    }

    [Int] setWidthpx($Widthpx)
    {
        $this.Widthpx = $Widthpx
    }
    
    [Int] setHighpx($Highpx)
    {
        $this.Highpx = $Highpx
    }    

    [Int] setHz($Hz)
    {
        $this.Hz = $Hz
    }

    [String] getBrand()
    {
        return $this.Brand
    }

    [String] getName()
    {
        return $this.Name
    }

    [String] getReference()
    {
        return $this.Reference
    }

    [Int] getWidthpx()
    {
        return $this.Widthpx
    }

    [Int] getHighpx()
    {
        return $this.Highpx
    }

    [Int] getHz()
    {
        return $this.Hz
    }

    [Int] getInch()
    {
        return $this.Inch
    }

    [Int] getMarkerId()
    {
        return $this.Hz
    }   

    [Int] getActive()
    {
        return $this.Active
    }
}