#!/usr/bin/pwsh

class OsLicense {

    [string]$License
    [int]$Active

    OsLicense($session)
    {
        $this.License = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance Win32_OperatingSystem).SerialNumber}
        $this.Active = 1
    }

    [String] getLicense()
    {
        return $this.License 
    }

    [Int] getActive()
    {
        return $this.Active 
    }

    [String] setLicense($license)
    {
        $this.License = $license

        return $this.License
    }
    
    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}
