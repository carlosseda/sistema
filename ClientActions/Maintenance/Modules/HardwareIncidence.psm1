#!/snap/bin/pwsh

class HardwareIncidence {

    [Int]$ComputerId
    [Int]$ComputerComponentId
    [Int]$UserId
    [Int]$ContactUserId
    [String]$UserOperability
    [String]$Subject
    [String]$IncidenceDescription
    [String]$SolutionDescription
    [DateTime]$DatetimeCommunication
    [DateTime]$DatetimeClosed
    [Bool]$Repairable
    [String]$Documentation
    [Bool]$Active

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [Int]getComputerComponentId()
    {
        return $this.ComputerComponentId
    }

    [Int]getUserId()
    {
        return $this.UserId
    }

    [Int]getContactUserId()
    {
        return $this.ContactUserId
    }

    [String]getUserOperability()
    {
        return $this.UserOperability
    }

    [String]getSubject()
    {
        return $this.Subject
    }

    [String]getIncidenceDescription()
    {
        return $this.IncidenceDescription
    }

    [String]getSolutionDescription()
    {
        return $this.SolutionDescription
    }

    [DateTime]getDatetimeCommunication()
    {
        return $this.DatetimeCommunication
    }

    [DateTime]getDatetimeClosed()
    {
        return $this.DatetimeCommunication
    }

    [Bool]getRepairable()
    {
        return $this.Repairable
    }

    [String]getDocumentation()
    {
        return $this.Documentation
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [DateTime]setDatetimeCommunication([DateTime]$datetimeCommunication)
    {
        $this.DatetimeCommunication = $datetimeCommunication

        return $this.DatetimeCommunication
    }

    [Int]setComputerId([Int]$computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [Int]setComputerComponentId([Int]$computerComponentId)
    {
        $this.ComputerComponentId = $computerComponentId

        return $this.ComputerComponentId
    }

    [Int]setUserId([Int]$userId)
    {
        $this.UserId = $userId

        return $this.UserId
    }

    [Int]setContactUserId([Int]$contactUserId)
    {
        $this.ContactUserId = $contactUserId

        return $this.ContactUserId
    }

    [String]setUserOperability([String]$userOperability)
    {
        $this.UserOperability = $userOperability

        return $this.UserOperability
    }

    [String]setSubject([String]$subject)
    {
        $this.Subject = $subject

        return $this.Subject
    }

    [String]setIncidenceDescription([String]$IncidenceDescription)
    {
        $this.IncidenceDescription = $incidenceDescription

        return $this.IncidenceDescription
    }

    [String]setSolutionDescription([String]$solutionDescription)
    {
        $this.SolutionDescription = $solutionDescription

        return $this.SolutionDescription
    }

    [Bool]setRepairable([Bool]$repairable)
    {
        $this.Repairable = $repairable

        return $this.Repairable
    }

    [String]setDocumentation([String]$documentation)
    {
        $this.Documentation = $documentation

        return $this.Documentation
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}