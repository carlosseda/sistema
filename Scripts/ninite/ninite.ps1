#!/snap/bin/pwsh

#$ip = '2.155.215.204'
#$port = '22118'

$ip = $args[1]
$port = $args[2]
$softwareId = $args[3]

if ($softwareId == array){

}

$session = New-PSsession -HostName "sistema@$ip" -Port "$port"
Invoke-RestMethod -Method 'Get' -ContentType 'application/x-www-form-urlencoded' -Headers @{'X-XSRF-TOKEN' = $apiToken} -Uri $url -Body $body
Invoke-Command -Session $session -ScriptBlock {Start-Process -FilePath 'C:\prueba\ninite.exe' -ArgumentList '/install'}

