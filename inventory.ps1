#!/snap/bin/pwsh


Using module ".\switch.psm1"
Using module ".\pssession.psm1"
Using module ".\usersession.psm1"

$ip = Read-Host -Prompt 'Introduzca la ip del ordenador remoto'
$wolport = Read-Host -Prompt 'Introduzca el puerto WOL del ordenador remoto'
$mac = Read-Host -Prompt 'Introduzca la mac del ordenador remoto'
$sshport = Read-Host -Prompt 'Introduzca el puerto del ordenador remoto'
$user = Read-Host -Prompt 'Introduzca el nombre de usuario del ordenador remoto'

#$connect = [Connect]::New("2.155.215.204", 22125, 'Admin')

#Instanciamos el objeto

Write-Output '---- PC Sessions----'
$switch = [Switch]::New($ip, $wolport, $mac)
$switch.SwitchOn()
sleep 40s
$psSession = [PSSession]::New($ip, $sshport, $user)
$userSession = [UserSession]::New($pssession.Connect)
Write-Output $userSession.Name
$switch.SwitchOff($psSession.Connect)
