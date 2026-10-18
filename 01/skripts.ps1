# Atskaites ID: RVT-4417
$dators = Get-CimInstance Win32_OperatingSystem
Write-Output "Datora nosaukums: $env:COMPUTERNAME"
Write-Output "Operētājsistēma: $($dators.Caption)"
Write-Output "Būvējuma numurs: $($dators.BuildNumber)"
Write-Output "PowerShell versija: $($PSVersionTable.PSVersion)"
Write-Output "Datums un laiks: $(Get-Date)"
$procesi = Get-Process
Write-Output "Procesu skaits: $($procesi.Count)"
