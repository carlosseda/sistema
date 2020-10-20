#!/usr/bin/pwsh

class OsLicense {

    [string]$License
    [int]$Active

    Os_license($session)
    {
        $this.License = Invoke-Command -Session $session -ScriptBlock {(Get-CimInstance Win32_OperatingSystem).SerialNumber}
        $this.Active =
    }

    [String] getLicense()
    {
        return $this.License 
    }
    [Int] setActive($Active)
    {
        $this.Active 
    }
}
