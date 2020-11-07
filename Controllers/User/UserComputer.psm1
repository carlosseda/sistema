#!/snap/bin/pwsh

class UserComputer {

    [Int]$ComputerId
    [Int]$UserId
    [Int]$Active

    [Int] getComputerId()
    {
        return $this.ComputerId
    }

    [Int] getUserId()
    {
        return $this.UserId
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

    [Int] setUserId($userId)
    {
        $this.UserId = $userId

        return $this.SessionId
    }

    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}