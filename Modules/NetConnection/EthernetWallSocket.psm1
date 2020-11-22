#!/snap/bin/pwsh

class EthernetWallSocket {

    [String]$SpaceId
    [String]$NetId
    [Int]$Number
    
    [String]getDevice()
    {
        return $this.Device
    }

    [String]getDeviceId()
    {
        return $this.DeviceId
    }

    [String]getNetId()
    {
        return $this.NetId
    }

    [String]getWifiSsid()
    {
        return $this.WifiSsid
    }

    [Int]getRjEntry()
    {
        return $this.RjEntry
    }

    [IPAddress]getIp()
    {
        return $this.Ip
    }

    [String]getDns()
    {
        return $this.Dns
    }

    [String]getSubnetMask()
    {
        return $this.SubnetMask
    }

    [String]getGateway()
    {
        return $this.Gateway
    }

    [Bool]getActive()
    {
        return $this.Active
    }

    [String]setDevice([String]$device)
    {
        $this.Device = $device

        return $this.Device
    }

    [Int]setDeviceId([Int]$deviceId)
    {
        $this.DeviceId = $deviceId

        return $this.DeviceId
    }

    [String]setNetId([Int]$netId)
    {
        $this.NetId = $netId

        return $this.NetId
    }

    [String]setWifiSsid([String]$wifiSsid)
    {
        $this.WifiSsid = $wifiSsid

        return $this.WifiSsid
    }

    [Int]setRjEntry([Int]$rjEntry)
    {
        $this.RjEntry = $rjEntry

        return $this.RjEntry
    }

    [IPAddress]setIp([IPAddress]$ip)
    {
        $this.Ip = $ip

        return $this.Ip
    }

    [String]setDns([String]$dns)
    {
        $this.Dns = $dns

        return $this.Dns
    }

    [String]setSubnetMask([String]$subnetMask)
    {
        $this.SubnetMask = $subnetMask

        return $this.SubnetMask
    }

    [String]setGateway([String]$gateway)
    {
        $this.Gateway = $gateway

        return $this.Gateway
    }

    [Bool]setActive([Bool]$active)
    {
        $this.Active = $active

        return $this.Active
    }
}