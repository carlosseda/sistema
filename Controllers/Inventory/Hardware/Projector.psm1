#!/snap/bin/pwsh

class Screen {

    [String]$Brand
    [String]$Name
    [String]$Reference
    [Int]$WidthPx
    [Int]$HighPx
    [Int]$Lumens
    [Int]$Markerid
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

    [Int]getWidthPx()
    {
        return $this.WidthPx
    }

    [Int]getHighPx()
    {
        return $this.HighPx
    }

    [Int]getLumens()
    {
        return $this.Lumens
    }

    [Int]getMarkerId($markerId)
    {
        return $this.Markerid
    }  

    [Int]getSpaceId()
    {
        return $this.SpaceId
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

    [String]setReference([String]$reference)
    {
        $this.Reference = $reference

        return $this.Reference
    }

    [Int]setWidthPx([Int]$widthPx)
    {
        $this.WidthPx = $widthPx

        return $this.WidthPx
    }

    [Int]setHighPx([Int]$highPx)
    {
        $this.HighPx = $highPx

        return $this.HighPx
    }

    [Int]setLumens([Int]$lumens)
    {
        $this.Lumens = $lumens

        return $this.Lumens
    } 

    [Int]setMarkerId([Int]$markerId)
    {
        $this.Markerid = $markerId

        return $this.Markerid
    }  

    [Int]getSpaceId([Int]$spaceId)
    {
        $this.SpaceId = $spaceId

        return $this.SpaceId
    } 

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}
