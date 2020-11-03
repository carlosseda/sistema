#!/usr/bin/pwsh

Using module ".\os.psm1"

$ip = Read-Host -Prompt 'Introduzca la ip del ordenador remoto'
$user = Read-Host -Prompt 'Introduzca el nombre de usuario del ordenador remoto'
$session = New-PSSession -Hostname $user'@'$ip

$os = [Os]::New($session)

Write-Output '-----OS-----'
Write-Output $os



