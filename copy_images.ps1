New-Item -ItemType Directory -Path 'c:\Users\anany\Downloads\files (4)\img' -Force | Out-Null
for ($i = 1; $i -le 241; $i++) {
    $src = (($i - 1) % 32) + 1
    $srcFile = Join-Path 'c:\Users\anany\Downloads\files (4)\FF Results' ('{0:D2}.jpg' -f $src)
    $dstFile = Join-Path 'c:\Users\anany\Downloads\files (4)\img' ('{0:D3}.jpg' -f $i)
    Copy-Item -Path $srcFile -Destination $dstFile
}
Write-Host "Done: $((Get-ChildItem 'c:\Users\anany\Downloads\files (4)\img').Count) files"
