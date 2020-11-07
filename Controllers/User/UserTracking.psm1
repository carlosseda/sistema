#!/snap/bin/pwsh

class UserTracking {

    [datetime]$Datetime
    [string]$Action
    [int]$ComputerSessionId
    [int]$Active

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

    [datetime] setDatetime($datetime)
    {
        $this.Datetime = $datetime

        return $this.Datetime
    }

    [String] setAction($action)
    {
        $this.Action = $action

        return $this.Action
    }

    [int] getComputerSessionId($computerSessionId)
    {
        $this.ComputerSessionId = $computerSessionId

        return $this.ComputerSessionId
    }

    [int] getActive($active)
    {
        $this.Active = $active

        return $this.Action
    }
}