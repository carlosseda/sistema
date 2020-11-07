#!/snap/bin/pwsh

class UserTablet {

    [Int]$UserId
    [Int]$TabletId
    [Int]$Active

    [Int] getUserId()
    {
        return $this.UserId
    }

    [Int] getTabletId()
    {
        return $this.TabletId
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

    [Int] setMobileId($tabletId)
    {
        $this.TabletId = $tabletId

        return $this.TabletId
    }

    [Int] setActive($active)
    {
        $this.Active = $Active

        return $this.Active
    }
}