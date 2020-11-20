#!/snap/bin/pwsh

class Net {

    [String]$Brand
    [String]$Name
    [String]$Reference
    [String]$Type
    [String]$Ip
    [Boolean]$Wifi
    [String]$WifiSsid
    [Int]$RjEntries
    [Int]$SpaceId
    [Int]$MarkerId
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

    [String]getType()
    {
        return $this.Type
    }

    [IPAddress]getIp()
    {
        return $this.Ip
    }

    [Bool]getWifi()
    {
        return $this.Wifi
    }

    [String]getWifiSsid()
    {
        return $this.WifiSsid
    }

    [Int]getRjEntries()
    {
        return $this.RjEntries
    }

    [Int]getSpaceId()
    {
        return $this.SpaceId
    }

    [Int]getMarkerId()
    {
        return $this.RjEntries
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

    [String] setType([String]$type)
    {
        $this.Type = $type

        return $this.Type
    }

    [String] setIp([IPAddress]$ip)
    {
        $this.Ip = $ip

        return $this.Ip
    }

    [Bool]setWifi([Bool]$wifi)
    {
        $this.Wifi = $wifi

        return $this.Wifi
    }

    [String]setWifiSsid([String]$wifiSsid)
    {
        $this.WifiSsid = $wifiSsid

        return $this.WifiSsid
    }

    [Int]setRjEntries([Int]$rjEntries)
    {
        $this.RjEntries = $rjEntries

        return $this.RjEntries
    }

    [Int]setSpaceId([Int]$spaceId)
    {
        $this.SpaceId = $spaceId

        return $this.SpaceId
    }

    [Int]setMarkerId([Int]$markerId)
    {
        $this.MarkerId = $markerId

        return $this.MarkerId
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}