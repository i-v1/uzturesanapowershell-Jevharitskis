# Atskaites ID: RVT-4417
$sakums = (Get-Date).AddHours(-48)
$ieraksti = Get-WinEvent -FilterHashtable @{ LogName = "System"; Level = 2; StartTime = $sakums } -ErrorAction SilentlyContinue
Write-Output "Kļūdu ieraksti pēdējās 48 stundās: $($ieraksti.Count)"
if ($ieraksti.Count -gt 0) {
    $biežakais = $ieraksti | Group-Object -Property ProviderName | Sort-Object -Property Count -Descending | Select-Object -First 1
    Write-Output "Biežākais avots: $($biežakais.Name)"
    Write-Output "Šī avota reižu skaits: $($biežakais.Count)"
}
else {
    Write-Output "Biežākais avots: nav kļūdu ierakstu"
    Write-Output "Šī avota reižu skaits: 0"
}
