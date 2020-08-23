[CmdletBinding()]
param (
    [Parameter(Mandatory = $true, Position = 0)]
    [string]
    $NewTailNumber,

    [Parameter()]
    [string]
    $PackageLocation = (Join-Path $env:LOCALAPPDATA "Packages" "Microsoft.FlightSimulator_8wekyb3d8bbwe" "LocalCache" "Packages")
)

$configFiles = Get-ChildItem $PackageLocation -Include aircraft.cfg -Recurse
[regex]$regex = "atc_id = .*;"

foreach ($file in $configFiles) {
    Write-Host "Updating $file"
    (Get-Content $file  -Raw) -replace $regex, "atc_id = `"$NewTailNumber`";" | Set-Content $file
}