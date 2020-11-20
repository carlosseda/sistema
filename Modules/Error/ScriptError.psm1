#!/snap/bin/pwsh

class ScriptError
{

    [String]$ScriptName
    [String]$Code
    [String]$Message
    [Int]$ComputerSessionId
    [Bool]$Active

    [String]getScriptName()
    {
        return $this.ScriptName
    }

    [String]getCode()
    {
        return $this.Code
    }

    [String]getMessage()
    {
        return $this.Message
    }

    [Int]getComputerSessionId()
    {
        return $this.ComputerSessionId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setScriptName([String]$scriptName)
    {
        $this.ScriptName = $scriptName

        return $this.ScriptName
    }

    [String]setCode([String]$code)
    {
        $this.Code = $code

        return $this.Code
    }

    [String]setMessage([String]$message)
    {
        $this.Message = $message

        return $this.Message
    }

    [Int]setComputerSessionId([Int]$computerSessionId)
    {
        $this.ComputerSessionId = $computerSessionId

        return $this.ComputerSessionId
    }

    [Bool]Active([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}