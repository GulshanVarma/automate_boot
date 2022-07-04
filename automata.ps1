[System.Reflection.Assembly]::LoadWithPartialName(“System.Diagnostics”)

$sw = new-object System.Diagnostics.Stopwatch
$sw.Start()

while ($sw.elapsed.Milliseconds –lt 10) {$null}; 
& 'C:\Program Files\VideoLAN\VLC\vlc.exe' --qt-start-minimized --play-and-exit --qt-notification=0 "C:\Users\shu\Downloads\Start_alarm.mp3"

& start devenv
Start-Process -FilePath "C:\Program Files (x86)\Microsoft SQL Server Management Studio 18\Common7\IDE\Ssms.exe"

while ($sw.elapsed.Minutes –lt 40) {$null}; 
powershell -WindowStyle hidden -Command "& {[System.Reflection.Assembly]::LoadWithPartialName('System.Windows.Forms'); [System.Windows.Forms.MessageBox]::Show('Automatic logoff after 1 hour of inactivity','WARNING')}"
& 'C:\Program Files\VideoLAN\VLC\vlc.exe' --qt-start-minimized --play-and-exit --qt-notification=0 "C:\Users\shu\Downloads\Start_alarm.mp3"

$sw.Stop()
