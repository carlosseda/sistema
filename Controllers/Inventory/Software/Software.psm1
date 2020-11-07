#!/snap/bin/pwsh

class Software 
{

    [int]$SoftwareCategoryId
    [string]$Name
    [string]$Version
    [int]$Memory
    [boolean]$Active

    Software($session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Caption}
        $this.Version = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Version}
        $this.Memory = Invoke-COmmand -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Memory}
    }

    [Int] getSoftwareCategoryId()
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

    [boolean] getActive()
    {
        return $this.Active
    }

    [datetime] getCreatedAt()
    {
        return $this.CreatedAt
    }

    [datetime] getUpdatedAt()
    {
        return $this.UpdatedAt
    }

    [Int] getSoftwareCategoryId($softwareCategoryId)
    {
        $this.SoftwareCategoryId = $softwareCategoryId

        return $this.SoftwareCategoryId
    }

    [String] setName($name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String] setVersion($version)
    {
        $this.Version = $version

        return $this.Version
    }

    [Int] setMemory($memory)
    {
        $this.Memory = $memory

        return $this.Memory
    }

    [boolean] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}

