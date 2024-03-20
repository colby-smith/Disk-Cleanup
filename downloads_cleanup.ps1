$downloadsFolderPath = "C:\Users\Colby\Downloads"

Get-ChildItem -Path $downloadsFolderPath | ForEach-Object {
    Remove-Item -Path $_.FullName -Force
}