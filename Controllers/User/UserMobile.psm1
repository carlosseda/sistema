#!/snap/bin/pwsh

class UserMobile {

    [Int]$UserId
    [Int]$MobileId
    [Bool]$Active

    [Int]getUserId()
    {
        return $this.UserId
    }

    [Int]getMobileId()
    {
        return $this.MobileId
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

    [Int]setMobileId([Int]$mobileId)
    {
        $this.MobileId = $mobileId

        return $this.MobileId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $Active

        return $this.Active
    }
}
