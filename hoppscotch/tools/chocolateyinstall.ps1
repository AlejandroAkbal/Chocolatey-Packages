$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = 'https://github.com/hoppscotch/releases/releases/download/v23.8.4-1/Hoppscotch_win_x64.msi'

  softwareName  = 'Hoppscotch*'

  checksum      = 'F2D8D6A8195AE1AD517B4DBF397BC1551335EE6F25AEBBE83140BB8815084F75'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs