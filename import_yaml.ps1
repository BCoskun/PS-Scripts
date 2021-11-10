Install-Module -Name powershell-yaml

$a  = (Get-Content .\test.yaml | ConvertFrom-Yaml)

$c =  $a.projects | ForEach-Object { $_ } 
foreach ($item in $c.Keys) {
    $c[$item].repositories = $c[$item].repositories | ForEach-Object { $a.git_prefix  + "/" + $_ }    
}

foreach ($item in $c.Keys) {
    $c[$item]
}