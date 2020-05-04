$auroraExe = $args[0]
$bytes = [System.IO.File]::ReadAllBytes($auroraExe)
$hash = [System.Security.Cryptography.SHA256]::Create().ComputeHash($bytes)
$base64 = [Convert]::ToBase64String($hash)

return ($base64 -replace "\/", "" -replace "\+", "" -replace "\=", "").Substring(0, 6)