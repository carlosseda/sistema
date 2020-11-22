#!/snap/bin/pwsh

class UserRol {

    [Int]$ComputerId
    [Int]$UserId
    [Int]$RoleId
    [Bool]$Active

    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [Int]getUserId()
    {
        return $this.UserId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Int]setComputerId([Int]$computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [Int]setUserId([Int]$userId)
    {
        $this.UserId = $userId

        return $this.UserId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}
