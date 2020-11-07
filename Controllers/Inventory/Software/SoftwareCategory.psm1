#!/snap/bin/pwsh

class SoftwareCategory {

    [string]$Name
    [boolean]$Active

    [String] getName()
    {
        return $this.Name
    }

    [Boolean] getActive()
    {
        return $this.Active
    }

    [String] getName($name)
    {
        $this.Name = $name

        return $this.Name
    }

    [Boolean] getActive($active)
    {
        $this.Active = $active

        return $this.Active
    }
}



