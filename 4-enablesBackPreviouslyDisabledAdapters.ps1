# Enable previously disabled adapters
$disabledAdapters = Get-NetAdapter | Where-Object {$_.Status -eq "Disabled"}
foreach ($adapter in $disabledAdapters) {
    Enable-NetAdapter -Name $adapter.Name
}