﻿$url='http://cran.at.r-project.org/bin/windows/base/R-3.0.1-win.exe'
Install-ChocolateyPackage 'R.Project' 'exe' '/silent' "$url" -validExitCodes @(0)
