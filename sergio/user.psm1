#!/usr/bin/pwsh

class User {

    [string]$Name
    [string]$Surname
    [string]$Email
    [datetime]$StartDate
    [datetime]$EndDate
    [datetime]$StartTime
    [datetime]$EndTime

    User($session)
    {
        $this.Datetime = Invoke-Command -Session $session -ScriptBlock {(Get-Date).ToString()}
    }
    
<# ////////////////// GETTERS ////////////////// #>

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

    <# ////////////////// SETTERS ////////////////// #>

    [String] setName()
    {
        $this.Name = $Name
    }

    [String] setSurname()
    {
        $this.Surname = $Surname
    }
    [String] setEmail()
    {
        $this.Email = $Email
    }

    [datetime] setStartDate()
    {
        $this.StartDate = $StartDate
    }

    [datetime] setEndDate()
    {
        $this.EndDate = $EndDate
    }

    [datetime] setStartTime()
    {
        $this.StartTime = $StartTime
    }

    [datetime] setEndTime()
    {
        $this.EndTime = $EndTime
    }
}