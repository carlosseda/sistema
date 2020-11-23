#!/snap/bin/pwsh

class Disk
{

    [String]$Brand
    [String]$Name
    [String]$Type
    [Float]$SizeGB
    [Bool]$Active

    [String]getBrand()
    {
        return $this.Brand
    }

    [String] getName()
    {
        return $this.Name
    }

    [String]getType()
    {
        return $this.Type
    }

    [Int]getSizeGB()
    {
        return $this.SizeGB
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

    [String]setType([String]$type)
    {
        $this.Type = $type

        return $this.Type
    }

    [Float]setSizeGB([Float]$sizeGB)
    {
        $this.SizeGB = $sizeGB

        return $this.SizeGB
    }

    [Bool]Active([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}