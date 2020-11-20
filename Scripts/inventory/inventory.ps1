Using module ".\Modules\SwitchComputer\SwitchComputer.psm1"
Using module ".\Modules\PSSession\PSSession.psm1"
Using module ".\User\UserSession.psm1"

$ip = Read-Host -Prompt 'Introduzca la ip del ordenador remoto'
$wolport = Read-Host -Prompt 'Introduzca el puerto WOL del ordenador remoto'
$mac = Read-Host -Prompt 'Introduzca la mac del ordenador remoto'
$sshport = Read-Host -Prompt 'Introduzca el puerto del ordenador remoto'
$user = Read-Host -Prompt 'Introduzca el nombre de usuario del ordenador remoto'

Write-Output '---- PC Sessions----'
$switch = [Switch]::New($ip, $wolport, $mac)
$switch.SwitchOn()
sleep 40s
$psSession = [PSSession]::New($ip, $sshport, $user)
$userSession = [UserSession]::New($pssession.Connect)
Write-Output $userSession.Name
$switch.SwitchOff($psSession.Connect)
