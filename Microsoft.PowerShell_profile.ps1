$env:PSModulePath = $env:PSModulePath + ";C:\backup\codebase\PSmodules-[test]-"

Import-Module 'C:\tools\poshgit\dahlbyk-posh-git-7d93c81\src\posh-git.psd1'

cd "C:\backup\codebase"

Set-PSReadlineOption -BellStyle None