#!/usr/bin/pwsh

class Software {

    [string]$SoftwareCategoryId
    [string]$Name
    [int]$Version
    [int]$Memory
    [int]$Active
    [int]$CreatedAt
    [int]$UpdatedAt
    
    Software($session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Caption}
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Version}
        $this.Memory = Invoke-COmmand -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Memory}
    }

    [String] getName()
    {
        return $this.SoftwareCategoryId
    }

    [String] getName()
    {
        return $this.Name
    }

    [String] getVersion()
    {
        return $this.Version
    }

    [Int] getMemory()
    {
        return $this.Memory
    }

    [int] Active()
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

