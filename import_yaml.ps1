Install-Module -Name powershell-yaml

$yaml_file  = (Get-Content .\test.yaml | ConvertFrom-Yaml)

$yaml_projects =  $yaml_file.projects
foreach ($key in $yaml_projects.Keys) {
    $yaml_projects[$key].repositories = $yaml_projects[$key].repositories | ForEach-Object { $yaml_file.git_prefix  + "/" + $_ }    
}

foreach ($key in $yaml_projects.Keys) {
    $yaml_projects[$key]
}