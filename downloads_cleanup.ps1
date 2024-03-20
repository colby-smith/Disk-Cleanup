$downloadsFolderPath = "C:\Users\Colby\Downloads"

$files = Get-ChildItem -Path $downloadsFolderPath

foreach ($file in $files) {
    Remove-Item -Path $file.FullName -Force
}