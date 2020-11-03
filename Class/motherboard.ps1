
#!/usr/bin/pwsh

class Motherboard {

    [string]$Brand
    [string]$Name
    [string]$FormFactor
    [string]$Socket
    [int]$Active

    Motherboard($session)
    {

    }

    [String] getBrand()
    {
        return $this.Brand
    }

    [String] getName()
    {
        return $this.Name
    }

    [String] getFormFactor()
    {
        return $this.FormFactor
    }

    [String] getSocket()
    {
        return $this.Socket
    }

    [Int] getActive()
    {
        return $this.Active
    }

    [String] setBrand($brand)
    {
        $this.Brand = $brand

        return $this.Brand
    }

    [String] setName($name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String] setFormFactor($formFactor)
    {
        $this.FormFactor = $formFactor

        return $this.FormFactor
    }

    [String] setSocket($socket)
    {
        $this.Socket= $socket

        return $this.Socket
    }

    [Int] Active($active)
    {
        $this.Active = $active

        return $this.Active
    }
}