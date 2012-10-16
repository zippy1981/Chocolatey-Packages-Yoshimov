﻿try {
  # installer, will assert administrative rights
  $downUrl = 'http://dl.mediacoderhq.com/dl/_files/MediaCoder-0.8.16.5292.exe'
  $down64Url = 'http://dl.mediacoderhq.com/dl/_files/MediaCoder-x64-0.8.16.5292.exe'
  $toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  Install-ChocolateyPackage 'mediacoder' 'EXE' '/S' "$downUrl" "$down64Url" -validExitCodes @(0)
  
  Write-ChocolateySuccess 'mediacoder'
} catch {
  Write-ChocolateyFailure 'mediacoder' "$($_.Exception.Message)"
  throw 
}