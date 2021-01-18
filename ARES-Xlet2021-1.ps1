#2021-1 
#S0066 ARES-Xlet

# Options :
# Patchlist
$PatchesToDownload=
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows10.0-kb4598230-x64_f69498ce0cac1307eb0e6701ca334ff332364289.msu", #2019 OS
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows10.0-kb4598480-x64_0b0c7a9e6fb982e698647a3c06068fc8a69ea8db.msu", #2019 SSU
# 2019 Extra
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows10.0-kb4535680-x64_4a6f51365ed7f4c9ad34986aa2f61005af267e24.msu", # 2019 Security Update for Windows Server 2019 for x64-based Systems (KB4535680)

"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows10.0-kb4598243-x64_a96fed949c557064b0e105745a5524717ad72ab2.msu",  #2016 0S
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/08/windows10.0-kb4576750-x64_c4e0b5e0f0835db971a40058aa17ae9a0d2f1e2a.msu", #2016 SSU OLD
# 2016 Extra
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows10.0-kb4535680-x64_980ed67d1aaeeb5bb8a6b79e68438bd402865443.msu", # 2016 Security Update for Windows Server 2016 for x64-based Systems (KB4535680)


"http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows8.1-kb4598285-x64_7ee28aa249afc9b4ebf3d491e5fa529a31bc29e7.msu", #2012R2 OS
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/07/windows8.1-kb4566425-x64_243a8843ec4f888de71d0a94ec3deaf4e345f7a5.msu", #2012R2 SSU OLD
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows8.1-kb4598275-x64_faec6da0d1396da3bf0ceaa1bf194126395e29e8.msu", #2012R2 Only 
 # 2012R2 Extra
 "http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/06/windows8.1-kb4535680-x64_1cd22f094d7465f7c88b958f0dfa9c7cb3304a44.msu", # 2012R2 Security update Extra

"http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows8-rt-kb4598278-x64_7883eded1e26e988beeb55808b20f28ea38324bd.msu", #2012 OS
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2020/07/windows8-rt-kb4566426-x64_ed3f2c06d774af0138d4ca3e17b7151cbc5d0fc5.msu", #2012 SSU OLD
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows8-rt-kb4598297-x64_60f5c45d1216ee6ff1ab88ca03b037ac519ad0da.msu", #2012 Olny
 # 2012 Extra
 "http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/06/windows8-rt-kb4535680-x64_b33d60c3a01588048f7efea16c275f282c811f56.msu" #2012 Security update Extra

<#

"", #2019 .Net
"", #2019 .Net
"", #2016 .NET
"", #2012R2 .Net only
"", #2012R2 .Net only
"", #2012R2 .Net only
"", #2012R2 .Net only
"", #2012R2 .Net only
"", #2012R2 .Net only
"", #2012R2 .Net only
"", #2012R2 .Net only
"", #2012R2 .Net Rollup
"", #2012R2 .Net Rollup
"", #2012R2 .Net Rollup
"" #2012R2 .Net Rollup

#>

# Month 
$Month=13
# KB
# OS,OS2019,SSU2019,OS2016,SSU2016,Only2012R2,OS2012R2,SSU2012R2,Only2012,OS2012,SSU2012
$NewKBOS="$Month,KB4598230,KB4598480,KB4598243,KB4576750,KB4598275,KB4598285,KB4566425,KB4598297,KB4598278,KB4566426"
# Extra,IE11_20212R2,IE11_2012,NET1_2019,NET2_2019,NET1_2016,NET2_2016,NET_2012R2_Only1,NET_2012R2_Only2,NET_2012R2_Only3,NET_2012R2_Only4,NET_2012R2_Only5,NET_2012R2_Only6,NET_2012R2_Only7,NET_2012R2_Only8,NET_2012R2_Rollup1,NET_2012R2_Rollup2,NET_2012R2_Rollup3,NET_2012R2_Rollup4,NET_2012_Only1,NET_2012_Only2,NET_2012_Only3,NET_2012_Only4,NET_2012_Only5,NET_2012_Only6,NET_2012_Only7,NET_2012_Only8,NET_2012_Rollup1,NET_2012_Rollup2,NET_2012_Rollup3,NET_2012_Rollup4,Adobe1
$NewKBExtra="$Month,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,KB4535680"
#Month,31
############################################################################################################
# Static:
$MonthPlus1=$Month+1
$RepositoryFolder="2020-$Month"
$Repository="C:\Drift\RS\ARES-Xpatching\Patches"
$FullRepositoryPath="$Repository\$RepositoryFolder"
$SourcePathKB2020_OS="C:\Drift\RS\ARES-Xpatching\Source\KB2020_OS.csv"
$SourcePathKB2020_Extra="C:\Drift\RS\ARES-Xpatching\Source\KB2020_Extra.csv"

# Repository check/create
if (!(Test-Path $FullRepositoryPath)) {
    New-Item $FullRepositoryPath -ItemType Directory | Out-Null
    Write-Host "Creating Repository $Repository\$RepositoryFolder " -ForegroundColor Yellow
}
else{Write-Host "Repository $FullRepositoryPath exist" -ForegroundColor Green}
# Download
ForEach ($Patch in $PatchesToDownload){
    $Patch | ForEach-Object { $PatchName = $_.Split('/')[10] }
    Write-Host "Downloading " -NoNewline
    Write-Host $PatchName -NoNewline -ForegroundColor Cyan
    $output = "$FullRepositoryPath\$PatchName"
    $start_time = Get-Date
    Invoke-WebRequest -Uri $Patch -OutFile $output 
    $TimeCounter=[math]::Round((New-TimeSpan -Start $start_time -End $(Get-Date)).TotalSeconds)
    Write-Host " Time taken: " -NoNewline
    Write-Host $TimeCounter -NoNewline
    Write-Host " second(s)" 
}
# Update Source KB2020_OS with: OS,OS2019,SSU2019,OS2016,SSU2016,Only2012R2,OS2012R2,SSU2012R2,Only2012,OS2012,SSU2012
Write-Host "Updating KB2020_OS.csv with $NewKBOS " -ForegroundColor Yellow
$KB2020_OS=(Get-Content $SourcePathKB2020_OS)
$RowXOS=($KB2020_OS[$MonthPlus1])
$KB2020_OS -replace $RowXOS , $NewKBOS| Set-Content -Path $SourcePathKB2020_OS

# Update Source KB2020_Extra with: Extra,IE11_20212R2,IE11_2012,NET1_2019,NET2_2019,NET1_2016,NET2_2016,NET_2012R2_Only1,NET_2012R2_Only2,NET_2012R2_Only3,NET_2012R2_Only4,NET_2012R2_Rollup1,NET_2012R2_Rollup2,NET_2012R2_Rollup3,NET_2012R2_Rollup4,NET_2012_Only1,NET_2012_Only2,NET_2012_Only3,NET_2012_Only4,NET_2012_Rollup1,NET_2012_Rollup2,NET_2012_Rollup3,NET_2012_Rollup4
Write-Host "Updating KB2020_Extra.csv with $NewKBExtra " -ForegroundColor Yellow
$KB2020_Extra=(Get-Content $SourcePathKB2020_Extra)
$RowXExtra=($KB2020_Extra[$MonthPlus1])
$KB2020_Extra -replace $RowXExtra , $NewKBExtra| Set-Content -Path $SourcePathKB2020_Extra

# Verification
Write-Host "Verification Month $Month"
Write-Host "KB2020_OS: " -NoNewline -ForegroundColor Magenta
$KB2020_OS=(Get-Content $SourcePathKB2020_OS)
Write-Host $($KB2020_OS[$MonthPlus1]) 
Write-Host "KB2020_Extra: " -NoNewline -ForegroundColor Magenta
$KB2020_Extra=(Get-Content $SourcePathKB2020_Extra)
Write-Host $($KB2020_Extra[$MonthPlus1]) 
 
