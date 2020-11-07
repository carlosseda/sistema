#!/usr/bin/pwsh

class Role {

    [string]$Name
    [string]$Description

    [String] getName()
    {
        return $this.Name
    }

    [String] getDescription()
    {
        return $this.Description
    }

    [String] setName($name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String] setDescription($description)
    {
        $this.Description = $description

        return $this.Description
    }
}