#!/usr/bin/pwsh

class SoftwareCategory {

    [string]$Name
    [int]$Active
    [int]$CreatedAt
    [int]$UpdatedAt

    SoftwareCategory($session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Caption}
    }

    [String] getname()
    {
        return $this.Name
    }

    [String] getActive()
    {
        return $this.Active
    }

    [Int] getCreatedAt()
    {
        return $this.CreatedAt
    }
    [int]getUpdatedAt()
    {
        return $this.UpdatedAt
    }
}



