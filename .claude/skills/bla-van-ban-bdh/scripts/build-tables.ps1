param([string]$doc,[string]$spec,[string]$out)
$d=(Get-Content $doc -Raw -Encoding UTF8 | ConvertFrom-Json).content
$body=$d.tabs[0].documentTab.body.content
$T = Get-Content $spec -Raw -Encoding UTF8 | ConvertFrom-Json
$found=@()
foreach($tb in $T){
  $el = $body | Where-Object { $_.paragraph -and ((($_.paragraph.elements | ForEach-Object { $_.textRun.content }) -join '').Trim() -eq $tb.anchor) } | Select-Object -First 1
  if(-not $el){ throw "anchor not found: $($tb.anchor)" }
  $found += [pscustomobject]@{i=($el.endIndex-1); rows=$tb.rows}
}
$found = $found | Sort-Object i -Descending
$q=New-Object System.Collections.ArrayList
foreach($f in $found){
  $i=$f.i; $rows=@($f.rows); $nr=$rows.Count; $nc=@($rows[0]).Count
  [void]$q.Add(@{insertTable=@{rows=$nr;columns=$nc;location=@{index=$i}}})
  for($r=$nr-1;$r -ge 0;$r--){ for($c=$nc-1;$c -ge 0;$c--){ $txt=[string]@($rows[$r])[$c]; $pos=$i+4+$r*(2*$nc+1)+2*$c; [void]$q.Add(@{insertText=@{location=@{index=$pos};text=$txt}}) } }
  $acc=0
  for($r=0;$r -lt $nr;$r++){ for($c=0;$c -lt $nc;$c++){ $txt=[string]@($rows[$r])[$c]; $s=$i+4+$r*(2*$nc+1)+2*$c+$acc; $e=$s+$txt.Length; [void]$q.Add(@{updateTextStyle=@{range=@{startIndex=$s;endIndex=$e};textStyle=@{bold=($r -eq 0)};fields='bold'}}); [void]$q.Add(@{updateParagraphStyle=@{range=@{startIndex=$s;endIndex=$e+1};paragraphStyle=@{alignment=$(if($r -eq 0){'CENTER'}else{'START'});indentStart=@{magnitude=0;unit='PT'};indentFirstLine=@{magnitude=0;unit='PT'};keepWithNext=$false};fields='alignment,indentStart,indentFirstLine,keepWithNext'}}); $acc+=$txt.Length } }
}
"rev: $($d.revisionId)"
$found | ForEach-Object { "table at $($_.i)" }
$q | ConvertTo-Json -Depth 10 -Compress | Out-File -Encoding utf8 $out
