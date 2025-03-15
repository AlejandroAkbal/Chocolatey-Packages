$ErrorActionPreference = 'Stop'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'msi'
  url           = 'https://github.com/hoppscotch/releases/releases/download/v25.2.2-0/Hoppscotch_win_x64.msi'

  softwareName  = 'Hoppscotch*'

  checksum      = 'E5702FF797E45DB250246491EF3CA556522BC63A5B3BFA629575BDBEC9A9AC8C'
  checksumType  = 'sha256'

  silentArgs    = "/qn /norestart /l*v `"$($env:TEMP)\$($packageName).$($env:chocolateyPackageVersion).MsiInstall.log`""
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs