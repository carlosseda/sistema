#!/usr/bin/pwsh

class OsSession {

    [Int]$OsId
    [Int]$SessionId
    [Int]$Active

    OsSession($session)
    {

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

    [Int] setOsId($OsId)
    {
        $this.OsId = $OsId
    }

    [Int] setSessionId($SessionId)
    {
        $this.SessionId = $sessionId
    }

    [Int] setActive($Active)
    {
        $this.Active = $Active
    }
}