param([string]$paras,[int]$at,[string]$out,[string]$pre)
$P = Get-Content $paras -Raw -Encoding UTF8 | ConvertFrom-Json
$text=''
$R=New-Object System.Collections.ArrayList
foreach($it in $P){ $s=$at+1+$text.Length; $text+=$it.t+"`n"; [void]$R.Add([pscustomobject]@{k=$it.k;s=$s;e=$s+$it.t.Length;t=$it.t}) }
$ins="`n"+$text.Substring(0,$text.Length-1)
$a=$R[0].s; $z=$R[$R.Count-1].e
$q=New-Object System.Collections.ArrayList
if($pre){ foreach($x in (Get-Content $pre -Raw -Encoding UTF8 | ConvertFrom-Json)){ [void]$q.Add($x) } }
[void]$q.Add(@{insertText=@{location=@{index=$at};text=$ins}})
[void]$q.Add(@{updateTextStyle=@{range=@{startIndex=$a;endIndex=$z};textStyle=@{bold=$false;italic=$false;fontSize=@{magnitude=12;unit='PT'};weightedFontFamily=@{fontFamily='Times New Roman'}};fields='bold,italic,fontSize,weightedFontFamily'}})
[void]$q.Add(@{updateParagraphStyle=@{range=@{startIndex=$a;endIndex=$z+1};paragraphStyle=@{alignment='JUSTIFIED';lineSpacing=115;indentStart=@{magnitude=0;unit='PT'};indentFirstLine=@{magnitude=0;unit='PT'};spaceAbove=@{magnitude=0;unit='PT'};spaceBelow=@{magnitude=0;unit='PT'}};fields='alignment,lineSpacing,indentStart,indentFirstLine,spaceAbove,spaceBelow'}})
foreach($rr in $R){
 if($rr.k -eq 'P'){ [void]$q.Add(@{updateParagraphStyle=@{range=@{startIndex=$rr.s;endIndex=$rr.e+1};paragraphStyle=@{indentFirstLine=@{magnitude=36;unit='PT'}};fields='indentFirstLine'}}) }
 if($rr.k -eq 'H' -or $rr.k -eq 'S'){ $sa= if($rr.k -eq 'H'){6}else{3}; [void]$q.Add(@{updateParagraphStyle=@{range=@{startIndex=$rr.s;endIndex=$rr.e+1};paragraphStyle=@{spaceAbove=@{magnitude=$sa;unit='PT'};keepWithNext=$true};fields='spaceAbove,keepWithNext'}}); [void]$q.Add(@{updateTextStyle=@{range=@{startIndex=$rr.s;endIndex=$rr.e};textStyle=@{bold=$true};fields='bold'}}) }
 if($rr.k -eq 'B'){ $c=$rr.t.IndexOf(':'); if($c -gt 0 -and $c -lt 60){ [void]$q.Add(@{updateTextStyle=@{range=@{startIndex=$rr.s;endIndex=$rr.s+$c+1};textStyle=@{bold=$true};fields='bold'}}) } }
}
$cur=$null; $grps=New-Object System.Collections.ArrayList
foreach($rr in $R){ if($rr.k -eq 'B'){ if($cur){$cur.e=$rr.e}else{$cur=[pscustomobject]@{s=$rr.s;e=$rr.e}} } else { if($cur){[void]$grps.Add($cur);$cur=$null} } }
if($cur){[void]$grps.Add($cur)}
foreach($x in $grps){ [void]$q.Add(@{createParagraphBullets=@{range=@{startIndex=$x.s;endIndex=$x.e};bulletPreset='BULLET_DISC_CIRCLE_SQUARE'}}); [void]$q.Add(@{updateParagraphStyle=@{range=@{startIndex=$x.s;endIndex=$x.e};paragraphStyle=@{indentStart=@{magnitude=36;unit='PT'};indentFirstLine=@{magnitude=18;unit='PT'}};fields='indentStart,indentFirstLine'}}) }
$R | ForEach-Object { "{0} {1}-{2} {3}" -f $_.k,$_.s,$_.e,$_.t.Substring(0,[Math]::Min(30,$_.t.Length)) } | Out-File -Encoding utf8 ($out + '.map.txt')
"reqs: $($q.Count) groups $($grps.Count) end $z"
$q | ConvertTo-Json -Depth 10 -Compress | Out-File -Encoding utf8 $out
