#!/snap/bin/pwsh

class RoleInstallation 
{

    [Int]$RoleId
    [Int]$SoftwareId
    [Int]$Active

    [Int]getRoleId()
    {
        return $this.RoleId
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

