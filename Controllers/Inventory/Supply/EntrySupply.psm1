#!/snap/bin/pwsh

class EntrySupply
{

    [string]$ComponentType
    [int]$ComponentId
    [int]$BuyId
    [int]$ComputerComponentId
    [int]$UserId
    [int]$SpaceId
    [datetime]$ReceptionDate
    [boolean]$Active

    [String] getComponentType()
    {
        return $this.ComponentType
    }

    [Int] getComponentId()
    {
        return $this.ComponentId
    }

    [int] getBuyId()
    {
        return $this.BuyId
    }

    [int] getComputerComponentId()
    {
        return $this.ComputerComponentId
    }

    [int] getUserId()
    {
        return $this.UserId
    }

    [int] getSpaceId()
    {
        return $this.SpaceId
    }

    [datetime] getReceptionDate()
    {
        return $this.ReceptionDate
    }

    [boolean] getActive()
    {
        return $this.Active
    }

    [String] setComponentType($componentType)
    {
        $this.ComponentType = $componentType

        return $this.ComponentType
    }

    [Int] setComponentId($componentId)
    {
        $this.ComponentId = $componentId

        return $this.ComponentId
    }

    [int] setBuyId($buyId)
    {
        $this.BuyId = $buyId

        return $this.BuyId
    }

    [int] setComputerComponentId($computerComponentId)
    {
        $this.ComputerComponentId = $computerComponentId

        return $this.ComputerComponentId
    }

    [Int] setUserId($userId)
    {
        $this.UserId = $userId
        
        return $this.UserId
    }

    [Int] setSpaceId($spaceId)
    {
        $this.SpaceId = $spaceId
        
        return $this.SpaceId
    }

    [Datetime] setReceptionDate($receptionDate)
    {
        $this.ReceptionDate = $receptionDate

        return $this.ReceptionDate
    }

    [boolean] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}