$json_file  = (Get-Content .\test.json | ConvertFrom-Json)
$json_projects =  $json_file.projects | ForEach-Object { $_ } 
foreach ($project in $json_projects) {
    $project.repositories = $project.repositories  | ForEach-Object { $json_file.git_prefix  + $_ }    
}

$json_file
