Write-Host "Detecting available drives ..."

$drives = Get-PSDrive -PSProvider FileSystem | Select-Object -ExpandProperty Root

Write-Host "Found drives: $($drives -join ', ')"
Write-Host ""

foreach ($drive in $drives) {

    Write-Host "Searching for Flutter projects in $drive ..."

    $projects = Get-ChildItem -Path $drive -Filter "pubspec.yaml" -Recurse -ErrorAction SilentlyContinue

    if ($projects.Count -eq 0) {
        Write-Host "No Flutter projects found in $drive."
        Write-Host ""
        continue
    }

    Write-Host "`nFound $($projects.Count) Flutter project(s) in $drive. Starting cleanup...`n"

    foreach ($file in $projects) {
        $projectPath = $file.Directory.FullName

        Write-Host "----------------------------------------"
        Write-Host "Cleaning project at: $projectPath"
        Write-Host "----------------------------------------"

        Push-Location $projectPath
        flutter clean
        Pop-Location

        Write-Host "Done.`n"
    }

    Write-Host "Finished cleaning projects in $drive!"
    Write-Host ""
}

Write-Host "`nAll drives scanned. Cleanup complete!"
