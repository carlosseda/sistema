#!/snap/bin/pwsh

class OsSession {

    [Int]$OsId
    [Int]$SessionId
    [Bool]$Active

    [Int]getOsId()
    {
        return $this.OsId
    }

    [Int]getSessionId()
    {
        return $this.SessionId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Int]setOsId([Int]$osId)
    {
        $this.OsId = $osId

        return $this.OsId
    }

    [Int]setSessionId([Int]$sessionId)
    {
        $this.SessionId = $sessionId

        return $this.SessionId
    }

    [Bool]setActive([Bool]$Active)
    {
        $this.Active = $Active

        return $this.Active
    }
}