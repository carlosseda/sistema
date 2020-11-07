#!/snap/bin/pwsh

class Marker {

    [String]$ElementType
    [Int]$ElementId
    [Int]$Value
    [Bool]$Active

    [String]getElementType()
    {
        return $this.ElementType
    }

    [Int]getElementId()
    {
        return $this.ElementId
    }

    [Int]getValue()
    {
        return $this.Value
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setElementType($elementType)
    {
        $this.ElementType = $elementType

        return $this.ElementType
    }

    [Int]setElementId($elementId)
    {
        $this.ElementId = $elementId

        return $this.ElementId
    }

    [Int]setValue($value)
    {
        $this.Value = $value

        return $this.Value
    }

    [Bool]setActive($active)
    {
        $this.Active = $active

        return $this.Active
    }

}