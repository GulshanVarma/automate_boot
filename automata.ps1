Write-Host " -------------------------------------- Start automata.ps1 ------------------------------------------------------"
Write-Host $(Get-Date)
[System.Reflection.Assembly]::LoadWithPartialName(“System.Diagnostics”)

$sw = new-object System.Diagnostics.Stopwatch
$sw.Start()
Write-Host "stopwatch started for 40 minutes"

while ($sw.elapsed.Minutes –lt 40) {$null}; 
& 'C:\Program Files\VideoLAN\VLC\vlc.exe' --qt-start-minimized --play-and-exit --qt-notification=0 "C:\Users\shu\Downloads\Start_alarm.mp3"
while ($sw.elapsed.Milliseconds –lt 1) {$null}; 
[reflection.assembly]::loadwithpartialname('System.Windows.Forms')
[reflection.assembly]::loadwithpartialname('System.Drawing')
$notify = new-object system.windows.forms.notifyicon
$notify.icon = [System.Drawing.SystemIcons]::Information
$notify.visible = $true
$notify.showballoontip(10,'WARNING','Timer started 40 Minutes ! Enjoy !!',[system.windows.forms.tooltipicon]::None)

#---------------------------------------------------------------------------------------------------------------------------------------------------------


& start devenv
Start-Process -FilePath "C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\Ssms.exe"

#---------------------------------------------------------------------------------------------------------------------------------------------------------

Write-Host "Programs started successfully"
while ($sw.elapsed.Seconds –lt 10) {$null}; 
$notify.showballoontip(10,'WARNING','You did **Great**, now Enjoy',[system.windows.forms.tooltipicon]::None)
& 'C:\Program Files\VideoLAN\VLC\vlc.exe' --qt-start-minimized --play-and-exit --qt-notification=0 "C:\Users\shu\Downloads\Start_alarm.mp3"

$sw.Stop()
Write-Host "stopwatch finished for 40 minutes"
Write-Host " -------------------------------------- SUCCESS ------------------------------------------------------"