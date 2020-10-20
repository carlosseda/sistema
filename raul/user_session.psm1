#!/usr/bin/pwsh

class UserSession {

    [Int]$UserId
    [Int]$SessionId
    [Int]$Active

    UserSession($session)
    {
    }

    [Int] getUserId()
    {
        return $this.UserId
    }

    [Int] getSessionId()
    {
        return $this.SessionId
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [Int] setUserId($UserId)
    {
        $this.UserId = $UserId
    }

    [Int] setSessionId($SessionId)
    {
        $this.SessionId = $SessionId
    }

    [Int] setActive($Active)
    {
        $this.Active = $Active
    }
}