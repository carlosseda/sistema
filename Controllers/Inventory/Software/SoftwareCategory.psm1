#!/snap/bin/pwsh

class SoftwareCategory {

    [String]$Name
    [Bool]$Active

    [String]getName()
    {
        return $this.Name
    }

    [Boolean]getActive()
    {
        return $this.Active
    }

    [String]getName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [Bool]getActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}



