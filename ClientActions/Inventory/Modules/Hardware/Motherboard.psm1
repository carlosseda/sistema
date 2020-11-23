#!/snap/bin/pwsh

class Motherboard 
{

    [String]$Brand
    [String]$Name
    [String]$FormFactor
    [String]$Socket
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

    [String]getSocket()
    {
        return $this.Socket
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

    [String]setFormFactor([String]$formFactor)
    {
        $this.FormFactor = $formFactor

        return $this.FormFactor
    }

    [String]setSocket([String]$socket)
    {
        $this.Socket= $socket

        return $this.Socket
    }

    [Bool]Active([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}