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
}