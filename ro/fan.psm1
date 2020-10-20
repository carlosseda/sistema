#!/usr/bin/pwsh

class fan {

    [string]$Brand
    [string]$Name
    [tinyint]$Active

    fan($session)
    {

    }

    [string] getBrand()
    {
        return $this.Brand
    }

    [string] getName()
    {
        return $this.Name
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [string] setBrand($Brand)
    {
        $this.Brand = $Brand
    }

    [string] getName($Name)
    {
        $this.Name = $Name
    }

    [Int] getActive($Active)
    {
        $this.Active = $Active
    }
}