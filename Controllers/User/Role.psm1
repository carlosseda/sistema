#!/usr/bin/pwsh

class Role {

    [String]$Name
    [String]$Description
    [Bool]$Active

    [String]getName()
    {
        return $this.Name
    }

    [String]getDescription()
    {
        return $this.Description
    }

    [Bool]getActive()
    {
	return $this.Active
    }

    [String]setName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String]setDescription([String]$description)
    {
        $this.Description = $description

        return $this.Description
    }

    [Bool]setActive([Bool]$active)
    {
	$this.Active = $active

	return $this.Active
    }
}
