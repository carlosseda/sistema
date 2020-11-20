#!/snap/bin/pwsh

class OsLicense 
{
    [Int]$OsId
    [String]$License
    [Bool]$Active

    OsLicense([PsObject]$session)
    {
        $this.License = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance Win32_OperatingSystem).SerialNumber}
    }

    [Int]getOsId()
    {
        return $this.OsId
    }

    [String]getLicense()
    {
        return $this.License 
    }

    [Bool]getActive()
    {
        return $this.Active 
    }

    [Int]setOsId([Int]$osId)
    {
        $this.OsId = $osId

        return $this.OsId
    }

    [String]setLicense([String]$license)
    {
        $this.License = $license

        return $this.License
    }
    
    [Int]setActive([Int]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}
