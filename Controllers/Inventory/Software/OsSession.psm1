#!/snap/bin/pwsh

class OsSession {

    [Int]$OsId
    [Int]$SessionId
    [Int]$Active

    [Int] getOsId()
    {
        return $this.OsId
    }

    [Int] getSessionId()
    {
        return $this.SessionId
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [Int] setOsId($osId)
    {
        $this.OsId = $osId

        return $this.OsId
    }

    [Int] setSessionId($sessionId)
    {
        $this.SessionId = $sessionId

        return $this.SessionId
    }

    [Int] setActive($Active)
    {
        $this.Active = $Active

        return $this.Active
    }
}