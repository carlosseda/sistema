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
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_DesktopMonitor).Name}
        $this.Widthpx = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentHorizontalResolution}
        $this.Highpx = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentVerticalResolution}
        $this.Hz = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentRefreshRate}
        $this.Active = 1
    }

    [String] getName()
    {
        return $this.Name
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
    [String] setName($Name)
    {
        $this.Name = $Name
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
}