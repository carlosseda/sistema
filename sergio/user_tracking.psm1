#!/usr/bin/pwsh

class UserTracking {

    [datetime]$Datetime
    [string]$Action

    UserTracking($session)
    {        
        $this.Datetime = Invoke-Command -Session $session -ScriptBlock {(Get-Date).ToString()}
    }

    <# ////////////////// GETTERS ////////////////// #>

    [datetime] getDatetime()
    {
        return $this.Datetime
    }

    [String] getAction()
    {
        return $this.Action
    }

<# ////////////////// SETTERS ////////////////// #>

    [datetime] setDatetime()
    {
        $this.Datetime = $Datetime
    }

    [String] setAction()
    {
        $this.Action = $Action
    }
}