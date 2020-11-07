#!/snap/bin/pwsh

class ComputerSoftware {

    [Int]$ComputerId
    [Int]$SoftwareId
    [Bool]$Active

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [Int]getSoftwareId()
    {
        return $this.OsId
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

    [Int]setSoftwareId([Int]$SoftwareId)
    {
        $this.SoftwareId = $SoftwareId

        return $this.SoftwareId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}