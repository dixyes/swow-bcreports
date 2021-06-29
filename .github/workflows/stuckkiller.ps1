# stucked tests killer for php run-tests.php on windows

# usage:
#  Start-Process -FilePath "powershell.exe" -Verb RunAs -ArgumentList ('-NoExit -Command "Set-Location ' + (Get-Location).Path + '; .\stuckkiller.ps1"')
param (
    $Re = '.*extension=swow.*',
    $Interval = 30,
    $TimeOut = 60,
    $LogFile = "stuckkiller.log"
)

$monitoring = @{}

while($true){
    $new_monitoring = @{}

    $processes = Get-WmiObject -Class Win32_Process
    foreach($process in $processes){
        if(-Not ($process.CommandLine -Match $Re)){
            continue
        }
        $mypid = $process.ProcessId
        $children = Get-WmiObject -Class Win32_Process -Filter "ParentProcessId = $mypid"
        if($children.count -Ne 0){
            continue
        }
        "found ${mypid}" | Tee-Object -FilePath $LogFile -Append | Out-Host
        $exist = $monitoring[$mypid];
        if(-Not $exist){
            # new process
            $expire = (Get-Date) + (New-TimeSpan -Seconds $TimeOut)
            $new_monitoring[$mypid] = @{
                expire = $expire;
                proc = $process;
            }
            continue
        }
        if ($exist["expire"] -Lt (Get-Date)){
            # not stuck
            $new_monitoring[$mypid] = $exist
            continue
        }
        if (
            ($exist["proc"].CommandLine -Ne $process.CommandLine) -Or
            ($exist["proc"].CreationDate -Ne $process.CreationDate)
        ){
            # not same process
            $new_monitoring[$mypid] = $exist
            continue
        }
        # stuck
        $cmd = $process.CommandLine
        "${mypid} ${cmd}" | Tee-Object -FilePath $LogFile -Append | Out-Host
        "${mypid} stuck, killing" | Tee-Object -FilePath $LogFile -Append | Out-Host
        Stop-Process -Id $mypid
    }
    Remove-Variable monitoring
    $monitoring = $new_monitoring
    Remove-Variable new_monitoring
    "waiting ${Interval}s" | Tee-Object -FilePath $LogFile -Append | Out-Host
    Start-Sleep -Seconds $Interval
}
