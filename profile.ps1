$macVsCodePath = '/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code'

function openCurrentDirectory {
    ii .
}

if([System.IO.File]::Exists($macVsCodePath)) {
    Set-Alias code $macVsCodePath 
}
else {
    Set-Alias open openCurrentDirectory
}
