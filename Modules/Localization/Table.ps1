#!/snap/bin/pwsh

class Table {

    [String]$Reference
    [String]$SpaceId
    [Int]$MarkerId
    [Bool]$Active

    [String]getReference()
    {
        return $this.Reference
    }

    [String]getSpaceId()
    {
        return $this.SpaceId
    }

    [Int]getMarkerId()
    {
        return $this.MarkerId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setReference([String]$reference)
    {
        $this.Reference = $reference

        return $this.Reference
    }

    [String]setSpaceId([String]$spaceId)
    {
        $this.SpaceId = $spaceId

        return $this.SpaceId
    }

    [Int]setMarkerId([Int]$markerId)
    {
        $this.MarkerId = $markerId

        return $this.MarkerId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }

}