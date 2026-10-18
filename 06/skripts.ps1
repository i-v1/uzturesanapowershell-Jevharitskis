# Atskaites ID: RVT-4417
$draiveri = Get-CimInstance Win32_PnPSignedDriver | Where-Object { $_.DriverProviderName -and $_.DriverProviderName -ne "Microsoft" }
$datuTabula = $draiveri | Select-Object DeviceName, DriverProviderName, DriverVersion, InfName
$datuTabula | Export-Csv -Path ".\draiveri.csv" -NoTypeInformation -Encoding UTF8
Write-Output "Rindas CSV failā: $($datuTabula.Count)"
$datuTabula | Select-Object -First 10 | Format-Table -AutoSize
