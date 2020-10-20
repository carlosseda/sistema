#!/usr/bin/pwsh

class Net {

    [String]$Brand
    [String]$Name
    [String]$Reference
    [String]$Type
    [String]$Ip
    [Int]$Wifi
    [String]$WifiSsid
    [Int]$RjEntries
    [Int]$SpaceId
    [Int]$MarkerId
    [Int]$Active
    
    Net($session)
    {
        $this.Brand = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_NetworkAdapter).Manufacturer[1]}
        $this.Name = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_OperatingSystem).Name}
        $this.Ip = Invoke-Command -Session $session -ScriptBlock {(Get-CIMInstance Win32_NetworkAdapterConfiguration).IPAddress[1]}
    }

    [String] getBrand()
    {
        return $this.Brand
    }

    [String] getName()
    {
        return $this.Name
    }

    [String] getIp()
    {
        return $this.Ip
    }

        [String] setBrand($Brand)
    {
        $this.Brand=$Brand
    }

    [String] setName($Name)
    {
        $this.Name=$Name
    }

    [String] setIp($Ip)
    {
        $this.Ip=$Ip
    }
}