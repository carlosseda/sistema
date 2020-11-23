#!/snap/bin/pwsh

class ComputerSession {

    [Int]$ComputerId
    [Int]$SessionId
    [Int]$Active

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [Int]getSessionId()
    {
        return $this.SessionId
    }

    [Int]getActive()
    {
        return $this.Active
    }

    [Int]setComputerId([Int]$computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [Int]setSessionId([Int]$sessionId)
    {
        $this.SessionId = $sessionId

        return $this.SessionId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}