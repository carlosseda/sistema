#!/snap/bin/pwsh

class ExitSupply
{

    [string]$ComponentType
    [int]$ComponentId
    [int]$BuyId
    [int]$EntrySupplyId
    [int]$ComputerComponentId
    [int]$UserId
    [datetime]$InstallationDate
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

    [int] getEntrySupplyId()
    {
        return $this.EntrySupplyId
    }

    [int] getComputerComponentId()
    {
        return $this.ComputerComponentId
    }

    [int] getUserId()
    {
        return $this.UserId
    }

    [datetime] getInstallationDate()
    {
        return $this.InstallationDate
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

    [int] getEntrySupplyId($entrySupplyId)
    {
        $this.EntrySupplyId = $entrySupplyId

        return $this.EntrySupplyId
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

    [Datetime] setInstallationDate($installationDate)
    {
        $this.InstallationDate = $installationDate

        return $this.InstallationDate
    }

    [boolean] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}
