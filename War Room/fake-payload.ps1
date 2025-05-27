# fake-payload.ps1

# Comando simulado (ex.: abrir bloco de notas)
$cmd = 'Start-Process notepad'
$enc = [Convert]::ToBase64String([System.Text.Encoding]::Unicode.GetBytes($cmd))
powershell.exe -EncodedCommand $enc
