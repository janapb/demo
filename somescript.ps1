$os = Get-Ciminstance Win32_OperatingSystem
$pctFree = [math]::Round(($os.FreePhysicalMemory/$os.TotalVisibleMemorySize)*100,2)
#Write-Output $pctFree
if ($pctFree -lt 20)
{
$utilised_memory=100-$pctFree
Write-Output "Memory Utilisation high !!! - $utilised_memory%"
exit 1
}
else
{
Write-Output "Memory utilisation is Normal - Available Memory: $pctfree%"
exit 0
}
