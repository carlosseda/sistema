#!/snap/bin/pwsh

class User {

    [String]$Name
    [String]$Surname
    [String]$Email
    [Int]$RolId
    [Datetime]$StartDate
    [Datetime]$EndDate
    [Datetime]$StartTime
    [Datetime]$EndTime
    [Bool]$Active
    
    [String]getName()
    {
        return $this.Name
    }

    [String]getSurname()
    {
        return $this.Surname
    }

    [String]getEmail()
    {
        return $this.Email
    }

    [Int]getRolId()
    {
        return $this.RolId
    }

    [Datetime]getStartDate()
    {
        return $this.StartDate
    }

    [Datetime]getEndDate()
    {
        return $this.EndDate
    }

    [Datetime]getStartTime()
    {
        return $this.StartTime
    }

    [Datetime]getEndTime()
    {
        return $this.EndTime
    }

    [Boolean]getActive()
    {
        return $this.Active
    }

    [String]setName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String]setSurname([String]$surname)
    {
        $this.Surname = $surname

        return $this.Surname
    }

    [String]setEmail([String]$email)
    {
        $this.Email = $email

        return $this.Email
    }

    [Int]getRolId([Int]$rolId)
    {
        $this.RolId = $rolId

        return $this.RolId
    }

    [Datetime]setStartDate([Datetime]$startDate)
    {
        $this.StartDate = $startDate

        return $this.StartDate
    }

    [Datetime]setEndDate([Datetime]$endDate)
    {
        $this.EndDate = $endDate

        return $this.EndDate
    }

    [Datetime]setStartTime([Datetime]$startTime)
    {
        $this.StartTime = $startTime

        return $this.StartTime
    }

    [Datetime]setEndTime([Datetime]$endTime)
    {
        $this.EndTime = $endTime

        return $this.EndTime
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}
