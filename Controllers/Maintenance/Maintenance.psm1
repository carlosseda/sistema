#!/snap/bin/pwsh

class Maintenance {

    [Int]$ComputerId
    [DateTime]$DatetimeOpened
    [DateTime]$DatetimeClosed
    [String]$Description
    [Boolean]$Active

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [DateTime]getDatetimeOpened()
    {
        return $this.DatetimeOpened
    }

    [DateTime]getDatetimeOpened()
    {
        return $this.DatetimeClosed
    }

    [String]getDescription()
    {
        return $this.Description
    }

    [Boolean]getActive()
    {
        return $this.Active
    }

    [Int]setComputerId([Int]$computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [DateTime]setDatetimeOpened([DateTime]$datetimeOpened)
    {
        $this.DatetimeOpened = $datetimeOpened

        return $this.DatetimeOpened
    }

    [DateTime]setDatetimeClosed([DateTime]$datetimeClosed)
    {
        $this.DatetimeClosed = $datetimeClosed

        return $this.DatetimeClosed
    }

    [String]setDescription([String]$description)
    {
        $this.Description = $description

        return $this.Description
    }

    [Boolean]setActive([Boolean]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}