#!/snap/bin/pwsh

$ip = '2.155.215.204'
$user = 'Admin'
$port = '22118'

pscp -i /home/sistema/.ssh/id_rsa.ppk -l sistema -P $args[1] /home/sistema/ninite.exe $args[0]:C:\ninite
$session = New-PSsession -HostName $user'@'$ip -p $port
Invoke-Command -Session $session -ScriptBlock {Start-Process -FilePath 'C:\prueba\ninite.exe' -ArgumentList '/install'}

