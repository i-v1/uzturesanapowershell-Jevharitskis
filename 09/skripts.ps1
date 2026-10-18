# Atskaites ID: RVT-4417
$procesi = Get-CimInstance Win32_Process
foreach ($process in $procesi) {
    $rezultats = Invoke-CimMethod -InputObject $process -MethodName GetOwner -ErrorAction SilentlyContinue
    if ($rezultats.ReturnValue -eq 0) {
        Write-Output "Process: $($process.Name); ID: $($process.ProcessId); Lietotājs: $($rezultats.Domain)\$($rezultats.User)"
    }
    else {
        Write-Output "Process: $($process.Name); ID: $($process.ProcessId); Lietotājs nav pieejams (iespējamas tiesību robežas)"
    }
}
