#!/snap/bin/pwsh

class SataConnection {

    [String]$Name
    [String]$Version
    [Int]$MotherboardId
    [Bool]$Active

    SataConnection([PsObject]$session)
    {
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance -Class Win32_IDEController).length}
    }

    [String]getName()
    {
        return $this.Name
    }

    [String]getVersion()
    {
        return $this.Version
    }

    [Int]getMotherboardId()
    {
        return $this.MotherboardId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String]setVersion([String]$version)
    {
        $this.Version = $version

        return $this.Version
    }

    [Int]setMotherboardId([Int]$motherboardId)
    {
        $this.MotherboardId = $motherboardId

        return $this.MotherboardId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}