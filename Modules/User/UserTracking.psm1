#!/snap/bin/pwsh

class UserTracking {

    [Datetime]$Datetime
    [String]$Action
    [Int]$ComputerSessionId
    [Bool]$Active

    [Datetime]getDatetime()
    {
        return $this.Datetime
    }

    [String]getAction()
    {
        return $this.Action
    }

    [Int]getComputerSessionId()
    {
        return $this.ComputerSessionId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Datetime]setDatetime([Datetime]$datetime)
    {
        $this.Datetime = $datetime

        return $this.Datetime
    }

    [String]setAction([String]$action)
    {
        $this.Action = $action

        return $this.Action
    }

    [Int]setComputerSessionId([Int]$computerSessionId)
    {
        $this.ComputerSessionId = $computerSessionId

        return $this.ComputerSessionId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Action
    }
}
