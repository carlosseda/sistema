#!/usr/bin/pwsh

class Rol {

    [string]$Name
    [string]$Description

    Rol($session){
    }

<# ////////////////// GETTERS ////////////////// #>

    [String] getName()
    {
        return $this.Name
    }

    [String] getDescription()
    {
        return $this.Description
    }

<# ////////////////// SETTERS ////////////////// #>

    [String] setName()
    {
        $this.Name = $Name
    }

    [String] setDescription()
    {
        $this.Description = $Description
    }
}