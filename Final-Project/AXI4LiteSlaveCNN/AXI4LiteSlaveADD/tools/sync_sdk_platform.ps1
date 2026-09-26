param(
    [string]$ProjectRoot = (Split-Path -Parent $PSScriptRoot)
)

$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem

$projectRoot = [System.IO.Path]::GetFullPath($ProjectRoot)
$hwRoot = Join-Path $projectRoot 'AxiTest01'
$sdkRoot = Join-Path $hwRoot 'AxiTest01.sdk'
$exportedHdf = Join-Path $sdkRoot 'AxiTest01_wrapper.hdf'
$platform0 = Join-Path $sdkRoot 'AxiTest01_wrapper_hw_platform_0'
$platform0Hdf = Join-Path $platform0 'system.hdf'
$platform0Bit = Join-Path $platform0 'AxiTest01_wrapper.bit'
$bspProject = Join-Path $sdkRoot 'Test01_bsp\.sdkproject'
$report = Join-Path $projectRoot 'SDK_SYNC_REPORT.txt'

if (!(Test-Path $exportedHdf)) {
    throw "Exported HDF was not found: $exportedHdf`nRun File > Export Hardware with Include bitstream first."
}

$temporaryDirectory = Join-Path ([System.IO.Path]::GetTempPath()) ('rft_hdf_' + [Guid]::NewGuid().ToString('N'))
New-Item -ItemType Directory -Path $temporaryDirectory | Out-Null

try {
    $archive = [System.IO.Compression.ZipFile]::OpenRead($exportedHdf)
    try {
        $bitEntry = $archive.Entries | Where-Object { $_.FullName -match '\.bit$' } | Select-Object -First 1
        if ($null -eq $bitEntry) {
            throw 'The exported HDF does not contain a bitstream. Export Hardware again with Include bitstream enabled.'
        }

        $embeddedBit = Join-Path $temporaryDirectory 'embedded.bit'
        [System.IO.Compression.ZipFileExtensions]::ExtractToFile($bitEntry, $embeddedBit, $true)
    }
    finally {
        $archive.Dispose()
    }

    $embeddedHash = (Get-FileHash -Algorithm SHA256 $embeddedBit).Hash
    $candidateBits = Get-ChildItem -Path (Join-Path $hwRoot 'AxiTest01.runs') -Filter 'AxiTest01_wrapper.bit' -File -Recurse
    $matchingBit = $null

    foreach ($candidate in $candidateBits) {
        $candidateHash = (Get-FileHash -Algorithm SHA256 $candidate.FullName).Hash
        Write-Host ("Candidate: {0}  SHA256={1}" -f $candidate.FullName, $candidateHash)
        if ($candidateHash -eq $embeddedHash) {
            $matchingBit = $candidate
            break
        }
    }

    if ($null -eq $matchingBit) {
        throw "No implementation bitstream matches the bitstream embedded in AxiTest01_wrapper.hdf.`nDo not run SDK; regenerate bitstream and export hardware again."
    }

    New-Item -ItemType Directory -Path $platform0 -Force | Out-Null
    Copy-Item -Force $exportedHdf $platform0Hdf
    Copy-Item -Force $matchingBit.FullName $platform0Bit

    if (Test-Path $bspProject) {
        $sdkProjectText = Get-Content -Raw $bspProject
        $sdkProjectText = [Regex]::Replace(
            $sdkProjectText,
            'HW_PROJECT_REFERENCE=.*',
            'HW_PROJECT_REFERENCE=AxiTest01_wrapper_hw_platform_0'
        )
        Set-Content -Path $bspProject -Value $sdkProjectText -Encoding ASCII
    }

    $copiedBitHash = (Get-FileHash -Algorithm SHA256 $platform0Bit).Hash
    $copiedHdfHash = (Get-FileHash -Algorithm SHA256 $platform0Hdf).Hash
    $exportedHdfHash = (Get-FileHash -Algorithm SHA256 $exportedHdf).Hash

    if ($copiedBitHash -ne $embeddedHash) {
        throw 'The bitstream copied to hw_platform_0 does not match the exported HDF.'
    }
    if ($copiedHdfHash -ne $exportedHdfHash) {
        throw 'system.hdf in hw_platform_0 does not match AxiTest01_wrapper.hdf.'
    }

    $lines = @(
        'SDK_PLATFORM_SYNC_OK=YES',
        'BSP_PLATFORM=AxiTest01_wrapper_hw_platform_0',
        ('SOURCE_HDF=' + $exportedHdf),
        ('SOURCE_BIT=' + $matchingBit.FullName),
        ('HDF_SHA256=' + $exportedHdfHash),
        ('BIT_SHA256=' + $embeddedHash),
        ('PLATFORM0_HDF=' + $platform0Hdf),
        ('PLATFORM0_BIT=' + $platform0Bit)
    )
    $lines | Set-Content -Path $report -Encoding ASCII

    Write-Host ''
    Write-Host 'SDK PLATFORM SYNC SUCCESSFUL' -ForegroundColor Green
    Write-Host 'Test01_bsp points to hw_platform_0.'
    Write-Host 'hw_platform_0 now contains the bitstream embedded in the latest exported HDF.'
    Write-Host ("BIT SHA256: {0}" -f $embeddedHash)
    Write-Host ("Report: {0}" -f $report)
}
finally {
    if (Test-Path $temporaryDirectory) {
        Remove-Item -Recurse -Force $temporaryDirectory
    }
}
