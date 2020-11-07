#!/snap/bin/pwsh

class Backup 
{

    [Int]$OriginPartitionId
    [String]$OriginPath
    [Int]$DestinationPartitionId
    [String]$DestinationPath
    [String]$Periodicity
    [Bool]$Active 

    [Int]getOriginPartitionId()
    {
        return $this.OriginPartitionId
    }

    [String]getOriginPath()
    {
        return $this.OriginPath
    }

    [Int]getDestinationPartitionId()
    {
        return $this.DestinationPartitionId
    }

    [String]getDestinationPath()
    {
        return $this.DestinationPath
    }

    [DateTime]getPeriodicity()
    {
        return $this.Periodicity
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Int]setOriginPartitionId([Int]$originPartitionId)
    {
        $this.OriginPartitionId = $originPartitionId

        return $this.OriginPartitionId
    }

    [String]setOriginPath([String]$originPath)
    {
        $this.OriginPath = $originPath

        return $this.OriginPath
    }

    [Int]setDestinationPartitionId([Int]$destinationPartitionId)
    {
        $this.DestinationPartitionId = $destinationPartitionId

        return $this.DestinationPartitionId
    }

    [Int]setDestinationPath([Int]$destinationPath)
    {
        $this.DestinationParth = $destinationPath

        return $this.DestinationPath
    }

    [String]setPeriodicity([String]$periodicity)
    {
        $this.Periodicity = $periodicity 

        return $this.Periodicity
    }
    
    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}