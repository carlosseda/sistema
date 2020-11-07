#!/snap/bin/pwsh

class Session {

    [array]$Name
    [array]$Privileges
    [string]$Password
    [int]$Active

    UserSession($connect)
    {
        $this.Name = Invoke-Command -Session $connect -ScriptBlock {(Get-Ciminstance -class Win32_UserAccount).Caption}
        $this.Privileges = Invoke-Command -Session $connect -ScriptBlock {(Get-Ciminstance -class Win32_UserAccount).AccountType}
        $this.Active = 1
    }

    [array] getName()
    {
        return $this.Name
    }

    [array] getPrivileges()
    {
        return $this.Privileges
    }

    [String] getPassword()
    {
        return $this.Password
    }

    [int] getActive()
    {
        return $this.Active
    }

    [array] setName($name)
    {
        $this.Name = $name

        return $this.Name
    }

    [array] getPrivileges($privileges)
    {
        $this.Privileges = $privileges

        return $this.Privileges
    }

    [int] setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}
