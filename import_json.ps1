$a  = (Get-Content .\test.json | ConvertFrom-Json)
$c =  $a.projects | ForEach-Object { $_ } 
foreach ($item in $c) {
    $item.repositories = $item.repositories  | ForEach-Object { $a.git_prefix  + $_ }    
}

$a
