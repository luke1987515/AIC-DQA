.\sg_scan.exe -s | Out-File sg_scan.txt
Get-Content sg_scan.txt | Select-String -Pattern "AIC" | Out-File sg_scan_AIC.txt
Get-Content sg_scan_AIC.txt |  %{ $_.Split('')[0]; } | Out-File AIC_SCSI.txt
Get-Content AIC_SCSI.txt | ? {$_.trim() -ne "" } | Out-File AIC_SCSI_num.txt
cat AIC_SCSI_num.txt
