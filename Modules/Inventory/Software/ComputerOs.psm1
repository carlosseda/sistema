#!/snap/bin/pwsh

class ComputerOs {

    [Int]$ComputerId
    [Int]$OsId
    [Bool]$Active

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [Int]getOsId()
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

    [Int]setOsId([Int]$osId)
    {
        $this.OsId = $osId

        return $this.OsId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}