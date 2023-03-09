# Return True if at least one network adapter is enabled
$enabledNetAdapters = Get-NetAdapter | Where-Object {$_.Status -eq "Up"}
if ($enabledNetAdapters) {
    return $true
} else {
    return $false
}