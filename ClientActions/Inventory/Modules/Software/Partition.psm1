#!/snap/bin/pwsh

class Partition {

    [String]$VolumeName
    [Float]$SizeGB
    [String]$FileSystem 
    [Bool]$OsInstalled 
    [Int]$ComputerComponentId
    [Bool]$Active

    Partition([PsObject]$session)
    {
        $this.VolumeName = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).VolumeName}
        $this.SizeGB = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).Size}
        $this.FileSystem = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).FileSystem}
        $this.OsInstalled = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).osInstalled}
        $this.DiskId = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).DiskId}
    }

    [String]getVolumeName()
    {
        return $this.VolumeName
    }

    [Float]getSizeGB()
    {
        return $this.SizeGB 
    }

    [String]getFileSystem()
    {
        return $this.FileSystem 
    }

    [Bool]getOsInstalled()
    {
        return $this.OsInstalled 
    }

    [Int]getComputerComponentId()
    {
        return $this.ComputerComponentId
    }

    [Bool]getActive()
    {
        return $this.Active 
    }

    [String]setVolumeName([String]$volumeName)
    {
        $this.VolumeName = $volumeName

        return $this.VolumeName
    }

    [Float]setSizeGB([Float]$sizeGB)
    {
        $this.SizeGB = $sizeGB

        return $this.SizeGB
    }

    [String]setFileSystem([String]$fileSystem)
    {
        $this.FileSystem = $fileSystem

        return $this.FileSystem 
    }

    [Int]setOsInstalled([Int]$osInstalled)
    {
        $this.OsInstalled = $osInstalled

        return $this.OsInstalled 
    }

    [Int]setComputerComponentId([Int]$computerComponentId)
    {
        $this.ComputerComponentId = $computerComponentId

        return $this.ComputerComponentId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active 
    }
}