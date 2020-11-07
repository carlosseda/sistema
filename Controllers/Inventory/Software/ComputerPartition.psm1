#!/snap/bin/pwsh

class ComputerOs {

    [Int]$ComputerId
    [Int]$PartitionId
    [Bool]$Active

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [Int]getPartitionId()
    {
        return $this.PartitionId
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

    [Int]setPartitionId([Int]$partitionId)
    {
        $this.partitionId = $partitionId

        return $this.partitionId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}