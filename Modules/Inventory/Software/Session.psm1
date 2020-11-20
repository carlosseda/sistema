#!/snap/bin/pwsh

class Session {

    [Array]$Name
    [Array]$Privileges
    [String]$Password
    [Int]$Active

    Session([PsObject]$session)
    {
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-Ciminstance -class Win32_UserAccount).Caption}
        $this.Privileges = Invoke-Command -Session $session -ScriptBlock {(Get-Ciminstance -class Win32_UserAccount).AccountType}
    }

    [Array]getName()
    {
        return $this.Name
    }

    [Array]getPrivileges()
    {
        return $this.Privileges
    }

    [String]getPassword()
    {
        return $this.Password
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [Array]setName([Array]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [array]getPrivileges([array]$privileges)
    {
        $this.Privileges = $privileges

        return $this.Privileges
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}
