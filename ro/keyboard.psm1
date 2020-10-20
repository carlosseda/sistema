#!/usr/bin/pwsh

class keyboard {

    [string]$Brand
    [string]$Name
    [tinyint]$Active


    keyboard($session)
    {
        return $this.Connection
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