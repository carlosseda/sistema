#!/snap/bin/pwsh

class Chasis {

    [String]$Brand
    [String]$Name
    [String]$FormFactor
    [Bool]$Active

    [String]getBrand()
    {
        return $this.Brand
    }

    [String]getName()
    {
        return $this.Name
    }

    [String]getFormFactor()
    {
        return $this.FormFactor
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

    [String]getFormFactor([String]$formFactor)
    {
        $this.FormFactor = $formFactor

        return $this.FormFactor
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}