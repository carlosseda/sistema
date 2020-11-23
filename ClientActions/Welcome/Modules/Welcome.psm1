
class Welcome
{
    [PSCustomObject]$ComputerInfo
    [PSCustomObject]$ComputerNetConfiguration
    [PSCustomObject]$SystemUser
    [String]$ApiToken
    [String]$ComputerInfoAPI 
    [String]$ComputerWelcomeAPI 

    Welcome()
    {
        $this.ApiToken = "ReplaceApiToken"
        $this.ComputerInfoAPI = "ReplaceComputerInfoAPI"
        $this.ComputerWelcomeAPI = "ReplaceComputerWelcomeAPI"
        $this.getComputerInfo()
        $this.setConfigNet()
        $this.setConfigSystemUser()
        $this.setConfigSSH()
        $this.installPowershell()
        $this.installSysAdminsFriends()
        $this.postWelcome()
    }

    [PSCustomObject] getComputerInfo()
    {
        $computerRequest = Invoke-RestMethod -Method 'Get' -ContentType 'application/x-www-form-urlencoded' -Headers @{'X-XSRF-TOKEN' = $this.ApiToken} -Uri $this.ComputerInfoAPI 
        ($computerRequest).mac = (Get-NetAdapter -Physical).MacAddress

        $this.ComputerInfo = $computerRequest

        return $this.ComputerInfo
    }

    [PSCustomObject] setConfigNet()
    {
        $interfaceAlias = (Get-NetConnectionProfile).InterfaceAlias
        set-NetConnectionProfile -InterfaceAlias $interfaceAlias -NetworkCategory Private
        
        New-NetIPAdfdress -IPAddress ($this.ComputerInfo).ip -InterfaceAlies $interfaceAlias -DefaultGateway ($this.ComputerInfo).gateway -AddresFamily IPv4 -PrefixLength 24
        Set-DnsClientServerAddres -IntrfaceAlies (Get-NetAdapter -PHysical).Name -ServerAddresses 8.8.8.8,1.1.1.1
        
        $this.ComputerNetConfiguration = Get-NetIPConfiguration -InterfaceAlias Wi-Fi

        return $this.ComputerNetConfiguration
    }

    [PSCustomObject] setConfigSystemUser()
    {
        $criptoFile = ".\Config\criptoadmin.txt"
        $cred = New-Object -TypeName System.Management.Automation.PSCredential -ArgumentList  ($this.ComputerInfo).system_user_name, (Get-Content $criptoFile | ConvertTo-SecureString)

        Rename-Computer -NewName ($this.ComputerInfo).reference
        New-LocalUser $cred.UserName -Password $cred.Password -FullName ($this.ComputerInfo).company -Description ($this.ComputerInfo).system_user_description
        Add-LocalGroupMember -Group "Administradores" -Member ($this.ComputerInfo).system_user_name

        $this.SystemUser =  Get-CimInstance -Class Win32_UserAccount -Filter "Caption LIKE '%' $cred.UserName" -Property *
    
        return $this.SystemUser
    }

    [Nullable] setConfigSSH()
    {
        Add-WindowsCapability -Online -Name OpenSSH.Client
        Add-WindowsCapability -Online -Name OpenSSH.Server
        Start-Service sshd
        Set-Service -Name sshd -StartupType ‘Automatic’
        New-NetFirewallRule -Name sshd -DisplayName 'OpenSSH Server (sshd)' -Enabled True -Direction Inbound -Protocol TCP -Action Allow -LocalPort 22
        
        Copy-Item -Path .\Config\sshd_config -Destination C:\ProgramData\ssh\sshd_config -force
        Copy-Item -Path .\Config\id_rsa.pub -Destination C:\ProgramData\ssh\administrators_authorized_keys
        
        $acl = Get-Acl C:\ProgramData\ssh\administrators_authorized_keys
        $acl.SetAccessRuleProtection($true, $false)
        $administratorsRule = New-Object system.security.accesscontrol.filesystemaccessrule("Administradores","FullControl","Allow")
        $systemRule = New-Object system.security.accesscontrol.filesystemaccessrule("SYSTEM","FullControl","Allow")
        $acl.SetAccessRule($administratorsRule)
        $acl.SetAccessRule($systemRule)
        $acl | Set-Acl
        
        Restart-Service sshd

        return null
    }

    [Nullable] installPowershell()
    {
        iex "& { $(irm https://aka.ms/install-powershell.ps1) } -UseMSI"

        Enable-PSRemoting 

        return null
    }

    [Nullable] installSysAdminsFriends()
    {
        Install-Module SysAdminsFriends -Force

        return null
    }

    [PSCustomObject] postWelcome()
    {
        $body = ConvertTo-Json -InputObject $this.ComputerInfo

        $this.ComputerInfo = Invoke-RestMethod -Method 'Post' -ContentType 'application/x-www-form-urlencoded' -Headers @{'X-XSRF-TOKEN' = $this.ApiToken} -Uri $this.ComputerWelcomeAPI  -Body $body
    
        return $this.ComputerInfo
    }
}

