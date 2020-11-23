#!/snap/bin/pwsh

Using module ".\Modules\SwitchComputer\SwitchComputer.psm1"
Using module ".\Modules\PSSession\pssession.psm1"
Using module ".\Modules\UserSession\usersession.psm1"

$PSSession = [PSSession]::New($ip, $sshport, $user)
$userSession = [UserSession]::New($pssession.Connect)

Write-Output $userSession.Name
