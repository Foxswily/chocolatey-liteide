$InstallPath = $env:INSTPATH

if( [String]::IsNullOrEmpty($InstallPath) ){
    $binRoot = Get-BinRoot
}else{
    $binRoot = $InstallPath
}

$ideRoot = join-path $binRoot "liteide"

if (Test-Path $ideRoot) {
    Remove-Item "$ideRoot" -Recurse
}
