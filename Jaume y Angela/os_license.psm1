#!/usr/bin/pwsh

class OsLicense {

    [string]$License
    [int]$Active

    Os_license($session)
    {
        $this.License = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance Win32_OperatingSystem).SerialNumber}
    }
    [Int] setActive($Active)
    {
        $this.Active = $Active
    }
    [String] getLicense()
    {
        return $this.License 
    }
    [Int] getActive()
    {
        return $this.Active 
    }
}
