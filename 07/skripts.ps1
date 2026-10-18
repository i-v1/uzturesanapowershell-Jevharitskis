# Atskaites ID: RVT-4417
$robeza = 10
$diski = Get-CimInstance Win32_LogicalDisk -Filter "DriveType=3"
foreach ($disks in $diski) {
    $kopaa = [math]::Round($disks.Size / 1GB, 1)
    $brivs = [math]::Round($disks.FreeSpace / 1GB, 1)
    Write-Output "Disks: $($disks.DeviceID); Kopā GB: $kopaa; Brīvi GB: $brivs"
    if ($disks.FreeSpace -lt ($robeza * 1GB)) {
        Write-Output "BRĪDINĀJUMS: diskā $($disks.DeviceID) ir mazāk par $robeza GB brīvas vietas!"
    }
}
