#!/usr/bin/pwsh

class keyboard {

    [string]$Brand
    [string]$Name
    [tinyint]$Active

    keyboard($session)
    {
      
    }

    [string] getBrand()
    {
        return $this.Brand
    }

    [String] getName()
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

    [String] setName($Name)
    {
        $this.Name = $Name
    }

    [Int] setActive($Active)
    {
        $this.Active = $Active
    }
}