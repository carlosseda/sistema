#!/snap/bin/pwsh

class UserTablet {

    [Int]$UserId
    [Int]$TabletId
    [Bool]$Active

    [Int]getUserId()
    {
        return $this.UserId
    }

    [Int]getTabletId()
    {
        return $this.TabletId
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

    [Int]setMobileId([Int]$tabletId)
    {
        $this.TabletId = $tabletId

        return $this.TabletId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $Active

        return $this.Active
    }
}
