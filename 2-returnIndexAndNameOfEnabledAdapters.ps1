# Return Index and Name of all enabled adapters
$enabledNetAdapters = Get-NetAdapter | Where-Object {$_.Status -eq "Up"}
foreach ($adapter in $enabledNetAdapters) {
    Write-Host "Index: $($adapter.ifIndex), Name: $($adapter.Name)"
}
