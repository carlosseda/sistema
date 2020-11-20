$ip = '2.155.215.204'
$user = 'Admin'
$port = '22118'

pscp -i /home/xisco/.ssh/id_rsa.ppk -l Admin -P 22118 /home/xisco/ninite.exe 2.155.215.204:C:\prueba
$session = New-PSsession -HostName $user'@'$ip -p $port
Invoke-Command -Session $session -ScriptBlock {Start-Process -FilePath 'C:\prueba\ninite.exe' -ArgumentList '/install'}

