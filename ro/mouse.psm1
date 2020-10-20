#!/usr/bin/pwsh

class mouse {

    [string]$Brand
    [string]$Name
    [tinyint]$Active


    mouse($session)
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
}