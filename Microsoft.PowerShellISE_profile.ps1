start-steroids

Import-Module PsISEProjectExplorer

$env:PSModulePath = $env:PSModulePath + ";C:\backup\codebase\PSmodules-[test]-"

cd "C:\backup\codebase"

gci -Directory -Path C:\backup\codebase| % {
  cd "$($_.FullName)"
  write-host "updating ($_)" -ForegroundColor green
  git pull 
  }


gci -Directory -Path C:\backup\codebase| % {
  cd "$($_.FullName)"
  write-host "updating ($_)" -ForegroundColor green
  git add .
  git commit -m "automated push $(get-date)"
 git push 
  }