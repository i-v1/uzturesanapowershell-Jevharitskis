# Atskaites ID: RVT-4417
$adapteri = Get-NetAdapter | Select-Object Name, Status, MacAddress, LinkSpeed
$adapteri | Format-Table -AutoSize
$adapteri | Export-Csv -Path ".\adapteri.csv" -NoTypeInformation -Encoding UTF8
Write-Output "Adapteru skaits CSV failā: $($adapteri.Count)"
