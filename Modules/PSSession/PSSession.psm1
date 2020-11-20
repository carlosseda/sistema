#!/snap/bin/pwsh

class PSSession {

    [IPAddress]$Ip
    [Int]$SshPort
    [String]$User 
    [PsObject]$Connect

    PSSession([IPAddress]$ip, [Int]$sshPort, [String]$user){
        $this.Ip = $ip
        $this.SshPort = $sshPort
        $this.User = $user
        $this.Connect = New-PSSession -Hostname $this.Ip -UserName $this.User -port $this.SshPort
    }
}
