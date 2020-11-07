#!/snap/bin/pwsh

class ComputerOs {

    [Int]$ComputerId
    [Int]$OsId
    [Int]$Active

    [Int] getComputerId()
    {
        return $this.ComputerId
    }

    [Int] getOsId()
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

    [Int] setOsId($osId)
    {
        $this.OsId = $osId

        return $this.OsId
    }

    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}