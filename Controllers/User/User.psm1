#!/snap/bin/pwsh

class User {

    [string]$Name
    [string]$Surname
    [string]$Email
    [datetime]$StartDate
    [datetime]$EndDate
    [datetime]$StartTime
    [datetime]$EndTime
    [boolean]$Active
    
    [String] getName()
    {
        return $this.Name
    }

    [String] getSurname()
    {
        return $this.Surname
    }

    [String] getEmail()
    {
        return $this.Email
    }

    [datetime] getStartDate()
    {
        return $this.StartDate
    }

    [datetime] getEndDate()
    {
        return $this.EndDate
    }

    [datetime] getStartTime()
    {
        return $this.StartTime
    }

    [datetime] getEndTime()
    {
        return $this.EndTime
    }

    [boolean] getActive()
    {
        return $this.Active
    }

    [String] setName($name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String] setSurname($surname)
    {
        $this.Surname = $surname

        return $this.Surname
    }

    [String] setEmail($email)
    {
        $this.Email = $email

        return $this.Email
    }

    [datetime] setStartDate($startDate)
    {
        $this.StartDate = $startDate

        return $this.StartDate
    }

    [datetime] setEndDate($endDate)
    {
        $this.EndDate = $endDate

        return $this.EndDate
    }

    [datetime] setStartTime($startTime)
    {
        $this.StartTime = $startTime

        return $this.StartTime
    }

    [datetime] setEndTime($endTime)
    {
        $this.EndTime = $endTime

        return $this.endTime
    }

    [boolean] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}