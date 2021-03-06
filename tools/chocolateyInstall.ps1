$packageName = 'liteide'
$version = '27.2.1'
$url = 'http://server.pkg/pkgs/liteide/liteidex'+$version + '.windows-qt4.zip'
$url64 = 'http://server.pkg/pkgs/liteide/liteidex'+$version + '.windows-qt4.zip'
$validExitCodes = @(0)
$InstallPath = $env:INSTPATH
try {

    if( [String]::IsNullOrEmpty($InstallPath) ){
        $binRoot = Get-BinRoot
    }else{
        $binRoot = $InstallPath
    }

    $ideRoot = join-path $binRoot "liteide"

    if (Get-ProcessorBits 64) {
        $curentUrl = $url64
    } else {
        $curentUrl = $url
    }

    if (Test-Path $ideRoot) {
        Remove-Item "$ideRoot" -Recurse
    }

    Install-ChocolateyZipPackage "$packageName" "$curentUrl" "$binRoot"
}
catch {
    #Write-ChocolateyFailure "$packageName" "$($_.Exception.Message)"
    throw $_.Exception
}
