#!/usr/bin/pwsh

class Computer 
{
    [string]$Reference
    [string]$Type
    [datetime]$StartUse
    [datetime]$EndUse    

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

}