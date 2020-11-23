#!/snap/bin/pwsh

class ComputerSwitch {

    [Int]$ComputerId
    [Bool]$Status
    [IPAddress]$Ip
    [Int]$WoLPort
    [String]$Mac

    SwitchComputer([Int]$computerId, [IPAddress]$ip, [Int]$wolPort, [String]$mac){
        $this.ComputerId = $computerId
        $this.Ip = $ip
        $this.WoLPort = $wolPort
        $this.Mac = $mac
    }

    SwitchOn()
    {
        wakeonlan -i $this.Ip -p $this.WolPort $this.Mac
        Start-Sleep -s 45
        
        $this.Status = true
    }

    SwitchOff([PsObject]$pssession)
    {
        Invoke-Command -Session $pssession -ScriptBlock {shutdown /s}
        $this.Status = false
    }
}