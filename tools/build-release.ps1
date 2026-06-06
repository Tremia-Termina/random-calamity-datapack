param(
    [string]$Version = "1.0.4"
)

$ErrorActionPreference = "Stop"

$RepoRoot = Split-Path -Parent $PSScriptRoot
$PackRoot = Join-Path $RepoRoot "RandomCalamity"
$DistRoot = Join-Path $RepoRoot "dist"
$ZipPath = Join-Path $DistRoot "RandomCalamity-$Version.zip"
$PackRootPrefix = $PackRoot.TrimEnd("\") + "\"

New-Item -ItemType Directory -Force -Path $DistRoot | Out-Null
if (Test-Path -LiteralPath $ZipPath) {
    Remove-Item -LiteralPath $ZipPath -Force
}

Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem

$zip = [System.IO.Compression.ZipFile]::Open($ZipPath, [System.IO.Compression.ZipArchiveMode]::Create)
try {
    Get-ChildItem -LiteralPath $PackRoot -Recurse -File | ForEach-Object {
        $relative = $_.FullName.Substring($PackRootPrefix.Length)
        $entryName = $relative.Replace("\", "/")
        [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $_.FullName, $entryName) | Out-Null
    }
}
finally {
    $zip.Dispose()
}

Write-Host $ZipPath
