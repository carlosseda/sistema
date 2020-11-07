#!/snap/bin/pwsh

class Space {

    [String]$Reference
    [String]$Name
    [Int]$MarkerId
    [Bool]$Active

    [String]getReference()
    {
        return $this.Reference
    }

    [String]getName()
    {
        return $this.Name
    }

    [Int]getMarkerId()
    {
        return $this.arkerId
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

    [String]setName([String]$name)
    {
        $this.Name = $name

        return $this.Name
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