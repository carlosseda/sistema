#!/usr/bin/pwsh

class SupplyPower {

    [string]$Brand
    [string]$Name
    [int]$Watts
    [int]$Modular
    [int]$Active

    SupplyPower($session)
    {
    }

    [String] getBrand()
    {
        return $this.Brand
    }

    [String] getName()
    {
        return $this.Name
    }

    [Int] getWatts()
    {
        return $this.Watts
    }

    [Int] getModular()
    {
        return $this.Modular
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [String] setBrand($brand)
    {
        $this.Brand = $brand
    }

    [String] getName($name)
    {
        $this.Name = $name
    }

    [Int] getWatts($watts)
    {
        $this.Watts = $watts
    }

    [Int] getModular($modular)
    {
        $this.Modular = $modular
    }

    [Int] getActive($active)
    {
        $this.Active = $active
    }
}