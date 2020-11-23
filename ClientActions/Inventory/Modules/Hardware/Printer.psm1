#!/snap/bin/pwsh

class Printer {

    [String]$Brand
    [String]$Name
    [String]$Reference
    [Bool]$Multifunction
    [Bool]$Scanner
    [Bool]$DoubleSided
    [Bool]$Wifi
    [Bool]$Color
    [String]$Consumable
    [String]$MaxPrintSize
    [Int]$MarkerId
    [Int]$SpaceId
    [Bool]$Active

    [String]getBrand()
    {
        return $this.Brand
    }

    [String]getName()
    {
        return $this.Name
    }

    [String]getReference()
    {
        return $this.Reference
    }

    [Bool]geMultifunction()
    {
        return $this.Multifunction
    }

    [Bool]getScanner()
    {
        return $this.Scanner
    }

    [Bool]getDoubleSided()
    {
        return $this.DoubleSided
    }

    [Bool]getWifi()
    {
        return $this.Wifi
    }

    [Bool]getColor()
    {
        return $this.Color
    }

    [String]getConsumable()
    {
        return $this.Consumable
    }

    [String]getMaxPrintSize()
    {
        return $this.MaxPrintSize
    }

    [Int]getMarkerId()
    {
        return $this.MarkerId
    }   

    [Int]getSpaceId()
    {
        return $this.SpaceId
    }   

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]getBrand([String]$brand)
    {
        $this.Brand = $brand

        return $this.Brand
    }

    [String]getName([String]$name)
    {
        $this.Name = $name

        return $this.Name
    }

    [String]getReference([String]$reference)
    {
        $this.Reference = $reference

        return $this.Reference
    }

    [Bool]geMultifunction([Bool]$multifunction)
    {
        $this.Multifunction = $multifunction

        return $this.Multifunction
    }

    [Bool]getScanner([Bool]$scanner)
    {
        $this.Scanner = $scanner

        return $this.Scanner
    }

    [Bool]getDoubleSided([Bool]$doubleSided)
    {
        $this.DoubleSided = $doubleSided

        return $this.DoubleSided
    }

    [Bool]getWifi([Bool]$wifi)
    {
        $this.Wifi = $wifi

        return $this.Color
    }

    [Bool]getColor([Bool]$color)
    {
        $this.Color = $color

        return $this.Color
    }

    [String]getConsumable([String]$consumable)
    {
        $this.Consumable = $consumable

        return $this.Consumable
    }

    [String]getMaxPrintSize([String]$maxPrintSize)
    {
        $this.MaxPrintSize = $maxPrintSize

        return $this.MaxPrintSize
    }

    [Int]getMarkerId([Int]$markeId)
    {
        $this.MarkerId = $markeId

        return $this.MarkerId
    }   

    [Int]getSpaceId([Int]$spaceId)
    {
        $this.SpaceId = $spaceId

        return $this.SpaceId
    }   

    [Bool]getActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}