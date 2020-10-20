#!/usr/bin/pwsh

class ComputerSession {

    [Int]$ComputerId
    [Int]$SessionId
    [Int]$Active

    ComputerSession($session)
    {
    }

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

    [Int] setComputerId($ComputerId)
    {
        $this.ComputerId = $ComputerId
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