#!/usr/bin/pwsh

class BaseInstallation {

    [int]$SessionId
    [int]$SoftwareId
    [int]$Active
    [DateTime]$CreatedAt
    [DateTime]$UpdatedAt

    BaseInstallation($session)
    {
    [String] getSessionId()
    {
        return $this.SessionId
    }

    [String] getSoftware_id()
    {
        return $this.SoftwareId
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [DateTime]CreatedAt()
    {
        return $this.CreatedAt
    }
    [DateTime]UpdatedAt()
    {
        return $this.UpdatedAt
    }
}

