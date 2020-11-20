#!/snap/bin/pwsh

class SupplyPower 
{

    [String]$Brand
    [String]$Name
    [Int]$Watts
    [Int]$Modular
    [Bool]$Active

    [String]getBrand()
    {
        return $this.Brand
    }

    [String]getName()
    {
        return $this.Name
    }

    [Int]getWatts()
    {
        return $this.Watts
    }

    [Int]getModular()
    {
        return $this.Modular
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

    [String]getName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [Int]getWatts([Int]$watts)
    {
        $this.Watts = $watts

        return $this.Watts
    }

    [Int]getModular([Int]$modular)
    {
        $this.Modular = $modular

        return $this.Modular
    }

    [Bool]getActive([Bool]$active)
    {
        $this.Active = $active
        
        return  $this.Active
    }
}