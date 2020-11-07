#!/snap/bin/pwsh

class Partition {

    [string]$VolumeName
    [int]$Size
    [string]$FileSystem 
    [int]$OsInstalled 
    [int]$DiskId 
    [int]$Active

    Partition($session)
    {
        $this.VolumeName = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).VolumeName}
        $this.SizeGB = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).Size}
        $this.FileSystem = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).FileSystem}
        $this.OsInstalled = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).osInstalled}
        $this.DiskId = Invoke-Command -Session $session -ScriptBlock {(Get-WmiObject -Class Win32_LogicalDisk).DiskId}
        $this.Active = 1
    }

    [String] getVolumeName()
    {
        return $this.VolumeName
    }

    [int] getSize()
    {
        return $this.Size 
    }

    [string] getFileSystem()
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

    [String] setVolumeName($volumeName)
    {
        $this.VolumeName = $volumeName

        return $this.VolumeName
    }

    [int] setSize($size)
    {
        $this.Size = $size

        return $this.Size 
    }

    [string] setFileSystem($fileSystem)
    {
        $this.FileSystem = $fileSystem

        return $this.FileSystem 
    }

    [Int] setOsInstalled($osInstalled)
    {
        $this.OsInstalled = $osInstalled

        return $this.OsInstalled 
    }

    [int] setDiskId($diskId)
    {
        $this.DiskId = $diskId

        return $this.DiskId 
    }

    [Int] setActive($active)
    {
        $this.Active = $active

        return $this.Active 
    }
}