#!/snap/bin/pwsh

class ComputerSoftware {

    [Int]$ComputerId
    [Int]$SoftwareId
    [Int]$Active

    [Int] getComputerId()
    {
        return $this.ComputerId
    }

    [Int] getSoftwareId()
    {
        return $this.OsId
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

    [Int] setSoftwareId($SoftwareId)
    {
        $this.SoftwareId = $SoftwareId

        return $this.SoftwareId
    }

    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}