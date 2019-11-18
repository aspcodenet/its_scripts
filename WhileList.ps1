$today = Get-Date
$map = arp -a
foreach ($_ in $map){
    if ($_.Length -gt 0 -and $_[0] -NotMatch "[a-z]" -and $_[2] -NotMatch "[a-z]"){
    $IP = ($_.Substring(2,16)).Trim()
    $hej = Select-String -Pattern "$IP" -Path  C:\Users\Nemo\Documents\powershell\whitelist.txt

    if (!$hej){
        $pos = $IP.ToString().split(":")[-1]
        echo "DATE: $today IP: $pos" >> C:\Users\Nemo\Documents\powershell\INTRUSION.txt

    }
}
}