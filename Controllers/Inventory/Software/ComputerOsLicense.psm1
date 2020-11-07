#!/snap/bin/pwsh

class ComputerOsLicense {

    [Int]$ComputerId
    [Int]$OsLicenseId
    [Int]$Active

    [Int] getComputerId()
    {
        return $this.ComputerId
    }

    [Int] getOsLicenseId()
    {
        return $this.OsLicenseId
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [Int] setComputerId($computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [Int] setOsLicenseId($osLicenseId)
    {
        $this.OsLicenseId = $osLicenseId

        return $this.OsLicenseId
    }

    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}