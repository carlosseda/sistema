#!/usr/bin/pwsh

class UserTracking {

    [datetime]$Datetime
    [string]$Action
    [int]$ComputerSessionId
    [int]$Active

    UserTracking($session)
    {        
    }

    [datetime] getDatetime()
    {
        return $this.Datetime
    }

    [String] getAction()
    {
        return $this.Action
    }

    [int] getComputerSessionId()
    {
        return $this.ComputerSessionId
    }

    [int] getActive()
    {
        return $this.Active
    }

    [datetime] setDatetime($Datetime)
    {
        $this.Datetime = $Datetime
    }

    [String] setAction($Action)
    {
        $this.Action = $Action
    }

    [int] getComputerSessionId($ComputerSessionId)
    {
        $this.ComputerSessionId = $ComputerSessionId
    }

    [int] getActive($Active)
    {
        $this.Active = $Active
    }
}