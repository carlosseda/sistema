#!/snap/bin/pwsh

class Mouse {

    [String]$Brand
    [String]$Name
    [Bool]$Active

    [String]getBrand()
    {
        return $this.Brand
    }

    [String]getName()
    {
        return $this.Name
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setBrand([String]$brand)
    {
        $this.Brand = $brand

        return $this.Brand
    }

    [String]setName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}