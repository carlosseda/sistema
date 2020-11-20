#!/snap/bin/pwsh

class SoftwareLicense 
{
    [int]$SoftwareId
    [string]$License
    [int]$Active

    SoftwareLicense([PsObject]$session)
    {
        $this.License = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance Win32_OperatingSystem).SerialNumber}
    }

    [String]getLicense()
    {
        return $this.License 
    }

    [Int]getSoftwareId()
    {
        return $this.SoftwareId
    }

    [Int]getActive()
    {
        return $this.Active 
    }

    [String]setLicense([String]$license)
    {
        $this.License = $license

        return $this.License
    }

    [Int]setSoftwareId([Int]$softwareId)
    {
        $this.SoftwareId = $softwareId

        return $this.SoftwareId
    }
    
    [Int]setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}
