#!/snap/bin/pwsh

class ComputerComponent {
    
    [Int]$ComputerId
    [String]$ComponentType
    [Int]$ComponentId
    [String]$ConnectionType
    [Int]$ConnectionId
    [Bool]$Active
    
    [Int]getComputerId()
    {
        return $this.ComputerId
    }

    [String]getComponentType()
    {
        return $this.ComponentType
    }

    [Int]getComponentId()
    {
        return $this.ComponentId
    }

    [String]getConnectionType()
    {
        return $this.ConnectionType
    }

    [Int]getConnectionId()
    {
        return $this.ConnectionId
    }

    [Bool]getActive()
    {
        return $this.Active
    }
    
    [Int]setComputerId([Int]$computerId)
    {
        $this.ComputerId = $computerId

        return $this.ComputerId
    }

    [String]setComponentType([String]$componentType)
    {
        $this.ComponentType = $componentType

        return $this.ComponentType
    }

    [Int]setComponentId([Int]$componentId)
    {
        $this.ComponentId = $componentId

        return $this.ComponentId
    }

    [String]setConnectionType([String]$connectionType)
    {
        $this.ConnectionType = $connectionType

        return $this.ConnectionType
    }

    [Int]setConnectionId([Int]$connectionId)
    {
        $this.ConnectionId = $connectionId

        return $this.ConnectionId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}