#!/snap/bin/pwsh

class Computer
{

    [String]$Reference
    [String]$Mac 
    [String]$Type     
    [Int]$MarkerId
    [Int]$PlaceId
    [Int]$SpaceId
    [Int]$TableId
    [Bool]$Active

    [String]getReference() 
    {
        return $this.Reference
    }

    [String]getMac() 
    {
        return $this.Reference
    }

    [String]getType() 
    {
        return $this.Type
    }

    [Int]getMarkerId() 
    {
        return $this.MarkerId
    }

    [Int]getPlaceId() 
    {
        return $this.PlaceId
    }

    [Int]getSpaceId() 
    {
        return $this.SpaceId
    }

    [Int]getTableId() 
    {
        return $this.MarkerId
    }

    [Bool]getActive() 
    {
        return $this.Active
    }

    [String]setReference([String]$reference) 
    {
        $this.Reference = $reference
        
        return $this.Reference
    }

    [String]setType([String]$type) 
    {
        $this.Type = $type

        return $this.Type
    }

    [Int]setMarkerId([Int]$markerId) 
    {
        $this.MarkerId = $markerId

        return $this.MarkerId
    }

    [Int]setPlaceId([Int]$placeId) 
    {
        $this.PlaceId = $placeId

        return $this.PlaceId
    }

    [Int]setSpaceId([Int]$spaceId) 
    {
        $this.SpaceId = $spaceId

        return $this.SpaceId
    }

    [Int]setTableId([Int]$tableId) 
    {
        $this.TableId = $tableId

        return $this.TableId
    }

    [Bool]setActive([Bool]$active) 
    {
        $this.Active = $active

        return $this.Active
    }
}