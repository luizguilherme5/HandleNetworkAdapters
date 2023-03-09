# Disable enabled adapters
$enabledNetAdapters = Get-NetAdapter | Where-Object {$_.Status -eq "Up"}
foreach ($adapter in $enabledNetAdapters) {
    Disable-NetAdapter -Name $adapter.Name
}