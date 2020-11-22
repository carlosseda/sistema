#!/snap/bin/pwsh

class customPC {

	[String]$User
	[String]$Gateway
	[String]$Company
	[String]$ComputerName
	[SecureString]$Password
	[String]$CustomGateway
	[String]$Ip
	[String]$Mac
	
	customPC([PsCustomObject] $user,$gateway,$company,$computerName,$password,$customGateway,$ip,$mac)
	{
		$this.User = $user
		$this.Gateway = $gateway
		$this.Company = $company
		$this.ComputerName = $computerName
		$this.Password = $password
		$this.CustomGateway = $customGateway
		$this.Ip = $ip
		$this.Mac = $mac
	}

	[String]getUser()
	{
		return $this.User
	}

	[String]getGateway()
	{
		return $this.Gateway
	}

	[String]getCompany()
	{
		return $this.Company
	}

	[String]getComputerName()
	{
		return $this.ComputerName
	}

	[String]getPassword()
	{
		return $this.Password
	}

	[String]getCustomGateway()
	{
		return $this.CustomGateway
	}

	[String]getIp()
	{
		return $this.Ip
	}

	[String]getMac()
	{
		return $this.Mac
	}

	[String]setUser([String]$User)
	{
		$this.User = $User
		return $this.User
	}

	[String]setGateway([String]$Gateway)
	{
		$this.Gateway = $Gateway
		return $this.Gateway
	}

	[String]setCompany([String]$Company)
	{
		$this.Company = $Company
		return $this.Company
	}

	[String]setComputerName([String]$ComputerName)
	{
		$this.ComputerName = $ComputerName
		return $this.ComputerName
	}

	[String]setPassword([SecureString]$Password)
	{
		$this.Password = $Password
		return $this.Password
	}

	[String]setCustomGateway([String]$CustomGateway)
	{
		$this.CustomGateway = $CustomGateway
		return $this.Gateway
	}

	[String]setIp([String]$Ip)
	{
		$this.Ip = $Ip
		return $this.Ip
	}

	[String]setMac([String]$Mac)
	{
		$this.Mac = $Mac
		return $this.User
	}
}

