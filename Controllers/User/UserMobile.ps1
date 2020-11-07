#!/snap/bin/pwsh

class UserMobile {

    [Int]$UserId
    [Int]$MobileId
    [Int]$Active

    [Int] getUserId()
    {
        return $this.UserId
    }

    [Int] getMobileId()
    {
        return $this.MobileId
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

    [Int] setMobileId($mobileId)
    {
        $this.MobileId = $mobileId

        return $this.MobileId
    }

    [Int] setActive($active)
    {
        $this.Active = $Active

        return $this.Active
    }
}