#!/snap/bin/pwsh

class SoftwareIncidence {

    [Int]$ComputerId
    [Int]$UserId
    [Int]$ContactUserId
    [String]$AffectedElement
    [Int]$OsId
    [Int]$SessionId
    [Int]$SoftwareId
    [String]$UserOperability
    [String]$EventlogErrorCode
    [String]$SoftwareErrorCode
    [String]$Subject
    [String]$IncidenceDescription
    [String]$SolutionDescription
    [DateTime]$DatetimeCommunication
    [DateTime]$DatetimeClosed
    [Bool]$Repairable
    [String]$Documentation
    [Bool]$Active

    [DateTime]getDatetimeCommunication()
    {
        return $this.DatetimeCommunication
    }

    [Int]getUserId()
    {
        return $this.UserId
    }

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [Int]getContactUserId()
    {
        return $this.ContactUserId
    }

    [String]getAffectedElement()
    {
        return $this.AffectedElement
    }

    [Int]getOsId()
    {
        return $this.UserId
    }

    [Int]getSessionId()
    {
        return $this.SessionId
    }

    [Int]getSoftwareId()
    {
        return $this.UserId
    }

    [String]getUserOperability()
    {
        return $this.UserOperability
    }

    [String]getEventlogErrorCode()
    {
        return $this.EventlogErrorCode
    }

    [String]getSoftwareErrorCode()
    {
        return $this.SoftwareErrorCode
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

    [Int]setUserId([Int]$userId)
    {
        $this.UserId = $userId

        return $this.UserId
    }

    [Int]setComputerId([Int]$computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [Int]setOsId([Int]$osId)
    {
        $this.OsId = $osId

        return $this.OsId
    }

    [Int]setSessionId([Int]$sessionId)
    {
        $this.sessionId = $sessionId

        return $this.sessionId
    }

    [Int]setSoftwareId([Int]$softwareId)
    {
        $this.SoftwareId = $softwareId

        return $this.SoftwareId
    }

    [Int]setContactUserId([Int]$contactUserId)
    {
        $this.ContactUserId = $contactUserId

        return $this.ContactUserId
    }

    [String]setAffectedElement([String]$affectedElement)
    {
        $this.AffectedElement = $affectedElement

        return $this.AffectedElement
    }

    [String]setUserOperability([String]$userOperability)
    {
        $this.UserOperability = $userOperability

        return $this.UserOperability
    }

    [String]setEventlogError([String]$eventlogError)
    {
        $this.EventlogError = $eventlogError

        return $this.EventlogError
    }

    [String]setSoftwareError([String]$softwareError)
    {
        $this.SoftwareError = $softwareError

        return $this.SoftwareError
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

    [DateTime]setDatetimeCommunication([DateTime]$datetimeCommunication)
    {
        $this.DatetimeCommunication = $datetimeCommunication

        return $this.DatetimeCommunication
    }

    [DateTime]setDatetimeClosed([DateTime]$datetimeClosed)
    {
        $this.DatetimeClosed = $datetimeClosed

        return $this.DatetimeClosed
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