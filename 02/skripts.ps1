
# Atskaites ID: RVT-4417
$procesi = Get-Process | Sort-Object -Property WorkingSet64 | Select-Object -Last 10
foreach ($process in $procesi) {
    $atmina = [math]::Round($process.WorkingSet64 / 1MB, 1)
    Write-Output "Nosaukums: $($process.ProcessName); ID: $($process.Id); Atmiņa MB: $atmina"
}
