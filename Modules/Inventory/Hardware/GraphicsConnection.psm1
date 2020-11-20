#!/snap/bin/pwsh

class GraphicsConnection 
{

    [String]$Type
    [String]$Connector
    [String]$ComponentType
    [Int]$ComponentId
    [Bool]$Active 

    [String]getType()
    {
        return $this.Type
    }

    [String]getConnector()
    {
        return $this.Connector
    }

    [Int]getComponentType()
    {
        return $this.ComponentType
    }

    [Int]getComponentId()
    {
        return $this.ComponentId
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setType([String]$type)
    {
        $this.Type = $type

        return $this.Type
    }

    [String]setConnector([String]$connector)
    {
        $this.Connector = $connector

        return $this.Connector
    }

    [Int]setComponentType([String]$componentType)
    {
        $this.ComponentType = $componentType

        return $this.ComponentType
    }

    [Int]setComponentId([Int]$componentId)
    {
        $this.ComponentId = $componentId

        return $this.ComponentId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}