#!/snap/bin/pwsh

class NetIncidence {

    [Int]$UserId
    [Int]$NetId
    [Int]$ContactUserId
    [String]$NetworkQuality
    [String]$UserOperability
    [String]$Subject
    [String]$IncidenceDescription
    [String]$SolutionDescription
    [DateTime]$DatetimeCommunication
    [DateTime]$DatetimeClosed
    [Bool]$Repairable
    [String]$Documentation
    [Bool]$Active

    [Int]getUserId()
    {
        return $this.UserId
    }

    [Int]getNetId()
    {
        return $this.NetId
    }

    [Int]getContactUserId()
    {
        return $this.ContactUserId
    }

    [String]getNetworkQuality()
    {
        return $this.NetworkQuality
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

    [DateTime]getDatetimeCommunication()
    {
        return $this.DatetimeCommunication
    }

    [DateTime]getDatetimeClosed()
    {
        return $this.DatetimeClosed
    }

    [Boolean]getRepairable()
    {
        return $this.Repairable
    }

    [String]getDocumentation()
    {
        return $this.Documentation
    }

    [Boolean]getActive()
    {
        return $this.Active
    }

    [Int]setUserId([Int]$userId)
    {
        $this.UserId = $userId

        return $this.UserId
    }

    [Int]setNetId([Int]$netId)
    {
        $this.NetId = $netId

        return $this.NetId
    }

    [Int]setContactUserId([Int]$contactUserId)
    {
        $this.ContactUserId = $contactUserId

        return $this.ContactUserId
    }

    [String]setNetworkQuality([String]$networkQuality)
    {
        $this.NetworkQuality = $networkQuality

        return $this.NetworkQuality
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

    [Boolean]setRepairable([Boolean]$repairable)
    {
        $this.Repairable = $repairable

        return $this.Repairable
    }

    [String]setDocumentation([String]$documentation)
    {
        $this.Documentation = $documentation

        return $this.Documentation
    }

    [Boolean]setActive([Boolean]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}