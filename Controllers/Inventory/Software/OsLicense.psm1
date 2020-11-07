#!/snap/bin/pwsh

class OsLicense 
{
    [int]$OsId
    [string]$License
    [int]$Active

    OsLicense($session)
    {
        $this.License = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance Win32_OperatingSystem).SerialNumber}
        $this.Active = 1
    }

    [Int] getOsId()
    {
        return $this.OsId
    }

    [String] getLicense()
    {
        return $this.License 
    }

    [Int] getActive()
    {
        return $this.Active 
    }

    [Int] setOsId($osId)
    {
        $this.OsId = $osId

        return $this.OsId
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
