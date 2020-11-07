#!/snap/bin/pwsh

class SoftwareLicense 
{
    [int]$SoftwareId
    [string]$License
    [int]$Active

    OsLicense($session)
    {
        $this.License = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance Win32_OperatingSystem).SerialNumber}
        $this.Active = 1
    }

    [Int] getSoftwareId()
    {
        return $this.SoftwareId
    }

    [String] getLicense()
    {
        return $this.License 
    }

    [Int] getActive()
    {
        return $this.Active 
    }

    [Int] setSoftwareId($softwareId)
    {
        $this.SoftwareId = $softwareId

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
