#!/snap/bin/pwsh

class SessionInstallation 
{

    [Int]$SessionId
    [Int]$SoftwareId
    [Int]$SoftwareLicenseId
    [Int]$Active

    [Int]getSessionId()
    {
        return $this.SessionId
    }

    [Int]getSoftwareId()
    {
        return $this.SoftwareId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Int]setSessionId([Int]$sessionId)
    {
        $this.SessionId = $sessionId

        return $this.SessionId
    }

    [Int]setSoftwareId([Int]$softwareId)
    {
        $this.SoftwareId = $softwareId

        return $this.SoftwareId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}

