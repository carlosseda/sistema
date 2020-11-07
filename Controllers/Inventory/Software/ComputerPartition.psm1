#!/snap/bin/pwsh

class ComputerOs {

    [Int]$ComputerId
    [Int]$PartitionId
    [Int]$Active

    [Int] getComputerId()
    {
        return $this.ComputerId
    }

    [Int] getPartitionId()
    {
        return $this.PartitionId
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

    [Int] setPartitionId($partitionId)
    {
        $this.partitionId = $partitionId

        return $this.partitionId
    }

    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}