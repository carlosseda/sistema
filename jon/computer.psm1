#!/usr/bin/pwsh

class Computer 
{
    [string]$Reference
    [string]$Type
    [datetime]$StartUse
    [datetime]$EndUse    
    [int]$Active

    Computer()
    {
        $this.Active = 1
    }

    [string] getReference()
    {
        return $this.Reference
    }

    [string] getType()
    {
        return $this.Type
    }

    [datetime] getStartUse()
    {
        return $this.MaxMemorySize
    }

    [datetime] getEndUse()
    {
        return $this.MaxMemorySlots
    }

    [int] getActive()
    {
        return $this.Active
    }
}