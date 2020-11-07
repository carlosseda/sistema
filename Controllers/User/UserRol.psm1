#!/snap/bin/pwsh

class UserRol {

    [int]$ComputerId
    [int]$UserId
    [boolean]$Active

    [int] getComputerId()
    {
        return $this.ComputerId
    }

    [int] getUserId()
    {
        return $this.UserId
    }

    [boolean] getActive()
    {
        return $this.Active
    }

    [int] getComputerId($computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [int] getUserId($userId)
    {
        $this.UserId = $userId

        return $this.UserId
    }

    [boolean] getActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}