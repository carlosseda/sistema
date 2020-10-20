#!/usr/bin/pwsh

class Partition {

    [string]$VolumeName
    [byte]$Size
    [varchar]$FileSystem 
    [int]$OsInstalled 
    [int]$DiskId 
    [int]$Active

    Partition($session)
    {
        $this.VolumeName = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).VolumeName}
        $this.Size = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).Size}
        $this.FileSystem = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).FileSystem}
        $this.OsInstalled = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).osInstalled}
        $this.DiskId = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).DiskId}
    }

    [Int] setActive($Active)
    {
        $this.Active = $Active
    }

    [String] getLicense()
    {
        return $this.License 
    }
    [byte] getSize()
    {
        return $this.Size 
    }
    [varchar] getFileSystem()
    {
        return $this.FileSystem 
    }
    [Int] getOsInstalled()
    {
        return $this.OsInstalled 
    }    
    [int] getDiskId()
    {
        return $this.DiskId 
    }
    [Int] getActive()
    {
        return $this.Active 
    }
}