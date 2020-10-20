#!/usr/bin/pwsh

class computer {
    [string]$reference
    [string]$type
    [DateTime]$startUse
    [DateTime]$endUse        
    [int]$markerId
    [int]$placeId
    [int]$spaceId
    [int]$tableId
    [int]$active

    computer() {
        $this.active = 1
    }

    [string] getReference() {
        return $this.reference
    }

    [string] getType() {
        return $this.type
    }

    [datetime] getStartUse() {
        return $this.startUse
    }

    [datetime] getEndUse() {
        return $this.endUse
    }

    [int] getMarkerId() {
        return $this.markerId
    }

    [int] getPlaceId() {
        return $this.placeId
    }

    [int] getSpaceId() {
        return $this.spaceId
    }

    [int] getTableId() {
        return $this.markerId
    }

    [int] getActive() {
        return $this.active
    }

    [string] setReference($reference) {
        $this.reference = $reference
    }

    [string] setType($type) {
        $this.type = $type
    }

    [datetime] setStartUse($startUse) {
        $this.startUse = $startUse
    }

    [datetime] setEndUse($endUse) {
        $this.endUse = $endUse
    }

    [int] setMarkerId($markerId) {
        $this.markerId = $markerId
    }

    [int] setPlaceId($placeId) {
        $this.placeId = $placeId
    }

    [int] setSpaceId($spaceId) {
        $this.spaceId = $spaceId
    }

    [int] setTableId($tableId) {
        $this.tableId = $tableId
    }

    [int] setActive($active) {
        $this.active = $active
    }
}