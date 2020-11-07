#!/snap/bin/pwsh

class ComputerOsLicense {

    [Int]$ComputerId
    [Int]$OsLicenseId
    [Bool]$Active

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [Int]getOsLicenseId()
    {
        return $this.OsLicenseId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Int]setComputerId([Int]$computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [Int]setOsLicenseId([Int]$osLicenseId)
    {
        $this.OsLicenseId = $osLicenseId

        return $this.OsLicenseId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}