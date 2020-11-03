#!/usr/bin/pwsh

class BaseInstallation {

    [int]$SessionId
    [int]$SoftwareId
    [int]$Active

    BaseInstallation($session)
    {
    }

    [Int] getSessionId()
    {
        return $this.SessionId
    }

    [Int] getSoftwareId()
    {
        return $this.SoftwareId
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [Int] setSessionId($sessionId)
    {
        $this.SessionId = $sessionId

        return $this.SessionId
    }

    [Int] setSoftwareId($softwareId)
    {
        $this.SoftwareId = $softwareId

        return $this.SoftwareId
    }

    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}

