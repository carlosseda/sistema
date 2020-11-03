#!/usr/bin/pwsh

class computer {
    [string]$Reference
    [string]$Type
    [DateTime]$StartUse
    [DateTime]$EndUse        
    [int]$MarkerId
    [int]$PlaceId
    [int]$SpaceId
    [int]$TableId
    [int]$Active

    computer() 
    {
        $this.Active = 1
    }

    [string] getReference() 
    {
        return $this.Reference
    }

    [string] getType() 
    {
        return $this.Type
    }

    [datetime] getStartUse() {
        return $this.StartUse
    }

    [datetime] getEndUse() 
    {
        return $this.EndUse
    }

    [int] getMarkerId() 
    {
        return $this.MarkerId
    }

    [int] getPlaceId() 
    {
        return $this.PlaceId
    }

    [int] getSpaceId() 
    {
        return $this.SpaceId
    }

    [int] getTableId() 
    {
        return $this.MarkerId
    }

    [int] getActive() 
    {
        return $this.Active
    }

    [string] setReference($reference) 
    {
        $this.Reference = $reference
        
        return $this.Reference
    }

    [string] setType($type) 
    {
        $this.Type = $type

        return $this.Type
    }

    [datetime] setStartUse($startUse) 
    {
        $this.StartUse = $startUse

        return $this.StartUse
    }

    [datetime] setEndUse($endUse) 
    {
        $this.EndUse = $endUse

        return $this.EndUse
    }

    [int] setMarkerId($markerId) 
    {
        $this.MarkerId = $markerId

        return $this.MarkerId
    }

    [int] setPlaceId($placeId) 
    {
        $this.PlaceId = $placeId

        return $this.PlaceId
    }

    [int] setSpaceId($spaceId) 
    {
        $this.SpaceId = $spaceId

        return $this.SpaceId
    }

    [int] setTableId($tableId) 
    {
        $this.TableId = $tableId

        return $this.TableId
    }

    [int] setActive($active) 
    {
        $this.Active = $active

        return $this.Active
    }
}