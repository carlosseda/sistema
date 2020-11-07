#!/snap/bin/pwsh

class Screen {

    [String]$Brand
    [String]$Name
    [String]$Reference
    [Int]$HighPx
    [Int]$WidthPx
    [Int]$Hz
    [Int]$Inch
    [Int]$Markerid
    [Bool]$Active

    Screen([PsObject]$session)
    {
        $this.WidthPx = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentHorizontalResolution}
        $this.HighPx = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentVerticalResolution}
        $this.Hz = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_VideoController).CurrentRefreshRate}
    }

    [String]getBrand()
    {
        return $this.Brand
    }

    [String]getName()
    {
        return $this.Name
    }

    [String]getReference()
    {
        return $this.Reference
    }

    [Int]getWidthPx()
    {
        return $this.WidthPx
    }

    [Int]getHighPx()
    {
        return $this.HighPx
    }

    [Int]getHz()
    {
        return $this.Hz
    }

    [Int]getInch()
    {
        return $this.Inch
    }

    [Int]getMarkerId()
    {
        return $this.Hz
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

    [String]setReference([String]$reference)
    {
        $this.Reference = $reference

        return $this.Reference
    }

    [Int]setWidthPx([Int]$widthPx)
    {
        $this.WidthPx = $widthPx

        return $this.WidthPx
    }

    [Int]setHighPx([Int]$highPx)
    {
        $this.HighPx = $highPx

        return $this.HighPx
    }

    [Int]setHz([Int]$hz)
    {
        $this.Hz = $hz

        return $this.Hz
    }

    [Int]setInch([Int]$inch)
    {
        $this.Inch = $inch

        return $this.Inch
    }

    [Int]setMarkerId([Int]$markerId)
    {
        $this.Markerid = $markerId

        return $this.Markerid
    }   

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}