#!/snap/bin/pwsh

class ComputerSession {

    [Int]$ComputerId
    [Int]$SessionId
    [Int]$Active

    [Int] getComputerId()
    {
        return $this.ComputerId
    }

    [Int] getSessionId()
    {
        return $this.SessionId
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [Int] setComputerId($computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [Int] setSessionId($sessionId)
    {
        $this.SessionId = $sessionId

        return $this.SessionId
    }

    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}