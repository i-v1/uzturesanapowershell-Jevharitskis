# Atskaites ID: RVT-4417
$laiks1 = Measure-Command { $serviss1 = Get-Service -Name "Spooler" }
$laiks2 = Measure-Command { $serviss2 = Get-CimInstance Win32_Service -Filter "Name='Spooler'" }
Write-Output "Get-Service rezultāts: $($serviss1.Status)"
Write-Output "Get-CimInstance rezultāts: $($serviss2.State)"
Write-Output "Get-Service laiks ms: $([math]::Round($laiks1.TotalMilliseconds, 3))"
Write-Output "Get-CimInstance laiks ms: $([math]::Round($laiks2.TotalMilliseconds, 3))"
