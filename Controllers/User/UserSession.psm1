#!/snap/bin/pwsh

class UserSession {

    [Int]$UserId
    [Int]$SessionId
    [Int]$Active

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

    [Int] setUserId($userId)
    {
        $this.UserId = $userId

        return $this.UserId
    }

    [Int] setSessionId($sessionId)
    {
        $this.SessionId = $sessionId

        return $this.SessionId
    }

    [Int] setActive($active)
    {
        $this.Active = $Active

        return $this.Active
    }
}