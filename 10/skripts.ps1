# Atskaites ID: RVT-4417
$procesi = (Get-Process).Count
$servisi = Get-Service
$darbojas = 0
$aptureti = 0
foreach ($serviss in $servisi) {
    if ($serviss.Status -eq "Running") { $darbojas++ }
    elseif ($serviss.Status -eq "Stopped") { $aptureti++ }
}
$sakums = (Get-Date).AddHours(-48)
$kludas = Get-WinEvent -FilterHashtable @{ LogName = "System"; Level = 2; StartTime = $sakums } -ErrorAction SilentlyContinue
$diski = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"
Write-Output "Procesu skaits: $procesi"
Write-Output "Darbojas servisi: $darbojas"
Write-Output "Apturēti servisi: $aptureti"
Write-Output "Kļūdu ieraksti pēdējās 48 stundās: $($kludas.Count)"
foreach ($disks in $diski) {
    Write-Output "Disks $($disks.DeviceID), brīvi GB: $([math]::Round($disks.FreeSpace / 1GB, 1))"
}
Write-Output "Salīdzini šos skaitļus ar iepriekšējiem uzdevumiem. Tie var atšķirties, jo datora darbības laikā dati mainās."
