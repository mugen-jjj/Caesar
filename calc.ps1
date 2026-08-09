$from = -8,-8, 8, 8
$to = 94, 82,112,100
$count = 11

$a = New-Object 'object[,]' 4, $count
for($i=0;$i -lt $from.Count;$i++) {
    for($j = 0; $j -lt $count ; $j++) {
        $a[$i, $j] = $from[$i] + [Math]::Round($p[$j] + (($to[$i] - $From[$i]) / $p.Count * $j))
    }
}
for($k=0; $k -lt $count; $k++) {              # enumerate over the whole array
    Write-Host "Clsn1[$k]="$a[0, $k]"," $a[1, $k]"," $a[2, $k]"," $a[3, $k]
}