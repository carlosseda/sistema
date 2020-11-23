$ip = '192.168.0.21'
$user = 'Admin'

pscp -i /home/sistema/.ssh/id_rsa.ppk -l /tmp/ninite.exe 192.168.0.21:C:\prueba
$session = New-PSsession -HostName $user'@'$ip -p $port
Invoke-Command -Session $session -ScriptBlock {Start-Process -FilePath 'C:\prueba\ninite.exe' -ArgumentList '/install'}

