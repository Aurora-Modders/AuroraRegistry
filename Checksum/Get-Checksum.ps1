$auroraExe = $args[0]
if (-Not (Test-Path $auroraExe))
{
    Write-Warning "Couldn't find $auroraExe. Call this script with the path to aurora.exe."
    return
}

$bytes = [System.IO.File]::ReadAllBytes($auroraExe)
$hash = [System.Security.Cryptography.SHA256]::Create().ComputeHash($bytes)
$base64 = [Convert]::ToBase64String($hash)

return ($base64 -replace "\/", "" -replace "\+", "" -replace "\=", "").Substring(0, 6)
