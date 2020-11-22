#!/snap/bin/pwsh

class UserSession {

    [Int]$UserId
    [Int]$SessionId
    [Int]$ComputerId
    [Int]$UserFamilyId
    [Bool]$Active
    
    [Int]getUserId()
    {
        return $this.UserId
    }

    [Int]getSessionId()
    {
        return $this.SessionId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Int]setUserId([Int]$userId)
    {
        $this.UserId = $userId

        return $this.UserId
    }

    [Int] setSessionId([Int]$sessionId)
    {
        $this.SessionId = $sessionId

        return $this.SessionId
    }

    [Bool] setActive([Bool]$active)
    {
        $this.Active = $Active

        return $this.Active
    }
}
