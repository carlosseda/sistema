#!/usr/bin/pwsh

class Session {

    [array]$Name
    [array]$Privileges
    [int]$Active


    Session($session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-Wmiobject -class Win32_UserAccount).Caption}
        $this.Privileges = Invoke-Command -Session $session -ScriptBlock {(Get-Wmiobject -class Win32_UserAccount).AccountType}
    }

    [array] getName()
    {
        return $this.Name
    }

    [array] getPrivileges()
    {
        return $this.Privileges
    }

    [int] getActive()
    {
        return $this.Active
    }

    [array] setName($Name)
    {
        $this.Name = $Name
    }

    [array] setPrivileges($Privileges)
    {
        $this.Privileges = $Privileges
    }

    [int] setActive($Active)
    {
        $this.Active = $Active
    }
}