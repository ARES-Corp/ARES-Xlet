#2021-1 
#ARES-Xlet
# $CurrentXlet="ARES-Xlet2021_1.ps1" ; Invoke-WebRequest -Uri "https://drive.google.com/u/0/uc?id=1q9P7OL1rq89yhizsnIZXaVzi3CbGCL0N&export=download" -OutFile "C:\Drift\RS\ARES-Xpatching\Scripts\Xlets\$CurrentXlet" ; <# Powershell.exe -File "C:\Drift\RS\ARES-Xpatching\Scripts\Xlets\$CurrentXlet" #> psEdit "C:\Drift\RS\ARES-Xpatching\Scripts\Xlets\$CurrentXlet"
###############################################################
# Options 1: OS patches to download and update source files
$NeedToPatchOS= "Win2019"  , "Win2016" , "Win2012R2" , "Win2012" # Supported versions(Default) $NeedToPatchOS="Win2019","Win2016","Win2012R2","Win2012"
$UpdateSource=$NeedToPatchOS                             # (Default) Update Source files only for NeedToPatchOS
#$UpdateSource="Win2019","Win2016","Win2012R2","Win2012" # Update All Source files "Win2019","Win2016","Win2012R2","Win2012"
#################
# Options 2: Month 
$Month=1

######################################################################################################################################################################
#Options 3: Patchlist
$PatchesToDownload2019=
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows10.0-kb4598230-x64_f69498ce0cac1307eb0e6701ca334ff332364289.msu", #2019 OS
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows10.0-kb4598480-x64_0b0c7a9e6fb982e698647a3c06068fc8a69ea8db.msu", #2019 SSU
# 2019 Extra
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows10.0-kb4535680-x64_4a6f51365ed7f4c9ad34986aa2f61005af267e24.msu" # 2019 Security Update for Windows Server 2019 for x64-based Systems (KB4535680)

$PatchesToDownload2016=
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows10.0-kb4598243-x64_a96fed949c557064b0e105745a5524717ad72ab2.msu",  #2016 0S
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/08/windows10.0-kb4576750-x64_c4e0b5e0f0835db971a40058aa17ae9a0d2f1e2a.msu", #2016 SSU OLD
# 2016 Extra
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows10.0-kb4535680-x64_980ed67d1aaeeb5bb8a6b79e68438bd402865443.msu" # 2016 Security Update for Windows Server 2016 for x64-based Systems (KB4535680)

$PatchesToDownload2012R2=
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows8.1-kb4598285-x64_7ee28aa249afc9b4ebf3d491e5fa529a31bc29e7.msu", #2012R2 OS
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/07/windows8.1-kb4566425-x64_243a8843ec4f888de71d0a94ec3deaf4e345f7a5.msu", #2012R2 SSU OLD
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2021/01/windows8.1-kb4598275-x64_faec6da0d1396da3bf0ceaa1bf194126395e29e8.msu", #2012R2 Only 
 # 2012R2 Extra
 "http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/06/windows8.1-kb4535680-x64_1cd22f094d7465f7c88b958f0dfa9c7cb3304a44.msu" # 2012R2 Security update Extra

 $PatchesToDownload2012=
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows8-rt-kb4598278-x64_7883eded1e26e988beeb55808b20f28ea38324bd.msu", #2012 OS
"http://download.windowsupdate.com/c/msdownload/update/software/secu/2020/07/windows8-rt-kb4566426-x64_ed3f2c06d774af0138d4ca3e17b7151cbc5d0fc5.msu", #2012 SSU OLD
"http://download.windowsupdate.com/d/msdownload/update/software/secu/2021/01/windows8-rt-kb4598297-x64_60f5c45d1216ee6ff1ab88ca03b037ac519ad0da.msu", #2012 Olny
 # 2012 Extra
 "http://download.windowsupdate.com/d/msdownload/update/software/secu/2020/06/windows8-rt-kb4535680-x64_b33d60c3a01588048f7efea16c275f282c811f56.msu" #2012 Security update Extra
#
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

######################################################################################################################################################################
#Options 4: KB
#KB,OS,SSU,Patch3,Patch4,Patch5,Patch6,Patch7,Patch8,Patch9,Patch10,Patch11,Patch12,Patch13,Patch14,Patch15,Patch16,Patch17,Patch18,Patch19,Patch20
$NewKB2019="$Month,KB4598230,KB4598480,KB4535680,,,,,,,,,,,,,,,,,"
$NewKB2016="$Month,KB4598243,KB4576750,KB4535680,,,,,,,,,,,,,,,,,"
$NewKB2012R2="$Month,KB4598285,KB4566425,KB4598275,KB4535680,,,,,,,,,,,,,,,,"
$NewKB2012="$Month,KB4598278,KB4566426,KB4598297,KB4535680,,,,,,,,,,,,,,,,"

############################################################################################################


############################################################################################################
# Static:
$MonthPlus1=$Month+1
$RepositoryFolder="2021-$Month"
$Repository="C:\Drift\RS\ARES-Xpatch\Patches"
$FullRepositoryPath="$Repository\$RepositoryFolder"
$SourcePathKB2019="C:\Drift\RS\ARES-Xpatch\Source\KB2021_2019.csv"
$SourcePathKB2016="C:\Drift\RS\ARES-Xpatch\Source\KB2021_2016.csv"
$SourcePathKB2012R2="C:\Drift\RS\ARES-Xpatch\Source\KB2021_2012R2.csv"
$SourcePathKB2012="C:\Drift\RS\ARES-Xpatch\Source\KB2021_2012.csv"

# Repository check/create
foreach ($SupportedOS in $NeedToPatchOS ) {
    if (!(Test-Path $FullRepositoryPath\$SupportedOS)) {
        New-Item $FullRepositoryPath\$SupportedOS -ItemType Directory | Out-Null
        Write-Host "Creating Repository $Repository\$RepositoryFolder\$SupportedOS" -ForegroundColor Yellow
    }
    else{Write-Host "Repository $FullRepositoryPath\$SupportedOS exist" -ForegroundColor Green}
}
# Download
foreach ($SupportedOS in $NeedToPatchOS ) {
    if($SupportedOS -eq "Win2019"){$PatchesToDownload=$PatchesToDownload2019}
    elseif($SupportedOS -eq "Win2016"){$PatchesToDownload=$PatchesToDownload2016}
    elseif($SupportedOS -eq "Win2012R2"){$PatchesToDownload=$PatchesToDownload2012R2}
    elseif($SupportedOS -eq "Win2012"){$PatchesToDownload=$PatchesToDownload2012}

    ForEach ($Patch in $PatchesToDownload){
        $Patch | ForEach-Object { $PatchName = $_.Split('/')[10] }
        Write-Host "Downloading " -NoNewline
        Write-Host $PatchName -NoNewline -ForegroundColor Cyan
        $output = "$FullRepositoryPath\$SupportedOS\$PatchName"
        $start_time = Get-Date
        Invoke-WebRequest -Uri $Patch -OutFile $output 
        $TimeCounter=[math]::Round((New-TimeSpan -Start $start_time -End $(Get-Date)).TotalSeconds)
        Write-Host " Time taken: " -NoNewline
        Write-Host $TimeCounter -NoNewline
        Write-Host " second(s)" 
    }
}

foreach ($SourceFile in $UpdateSource ) {
    if($SourceFile -eq "Win2019"){
        # Update Source KB20xx with: #KB,OS,SSU,Patch3,Patch4,Patch5,Patch6,Patch7,Patch8,Patch9,Patch10,Patch11,Patch12,Patch13,Patch14,Patch15,Patch16,Patch17,Patch18,Patch19,Patch20
        Write-Host "Updating " -NoNewline
        Write-Host $SourcePathKB2019 -ForegroundColor Yellow -NoNewline
        Write-Host " with " -NoNewline
        Write-Host $NewKB2019 -ForegroundColor Yellow
        $KB2019=(Get-Content $SourcePathKB2019)
        $Row2019=($KB2019[$MonthPlus1])
        $KB2019 -replace $Row2019 , $NewKB2019| Set-Content -Path $SourcePathKB2019
    }
    elseif($SourceFile -eq "Win2016"){
        Write-Host "Updating " -NoNewline
        Write-Host $SourcePathKB2016 -ForegroundColor Yellow -NoNewline
        Write-Host " with " -NoNewline
        Write-Host $NewKB2016 -ForegroundColor Yellow
        $KB2016=(Get-Content $SourcePathKB2016)
        $Row2016=($KB2016[$MonthPlus1])
        $KB2016 -replace $Row2016 , $NewKB2016| Set-Content -Path $SourcePathKB2016
    }
    elseif($SourceFile -eq "Win2012R2"){
        Write-Host "Updating " -NoNewline
        Write-Host $SourcePathKB2012R2 -ForegroundColor Yellow -NoNewline
        Write-Host " with " -NoNewline
        Write-Host $NewKB2012R2 -ForegroundColor Yellow
        $KB2012R2=(Get-Content $SourcePathKB2012R2)
        $Row2012R2=($KB2012R2[$MonthPlus1])
        $KB2012R2 -replace $Row2012R2 , $NewKB2012R2| Set-Content -Path $SourcePathKB2012R2
    }
    elseif($SourceFile -eq "Win2012"){
        Write-Host "Updating " -NoNewline
        Write-Host $SourcePathKB2012 -ForegroundColor Yellow -NoNewline
        Write-Host " with " -NoNewline
        Write-Host $NewKB2012 -ForegroundColor Yellow
        $KB2012=(Get-Content $SourcePathKB2012)
        $Row2012=($KB2012[$MonthPlus1])
        $KB2012 -replace $Row2012 , $NewKB2012| Set-Content -Path $SourcePathKB2012
    }
}

foreach ($SourceFile in $UpdateSource ) {
    if($SourceFile -eq "Win2019"){   
        # Verification
        Write-Host "Verification Month $Month"
        Write-Host "$SourcePathKB2019 " -NoNewline -ForegroundColor Magenta
        $KB2019=(Get-Content $SourcePathKB2019)
        Write-Host $($KB2019[$MonthPlus1]) 
    }
    elseif($SourceFile -eq "Win2016"){
        Write-Host "$SourcePathKB2016 " -NoNewline -ForegroundColor Magenta
        $KB2016=(Get-Content $SourcePathKB2016)
        Write-Host $($KB2016[$MonthPlus1]) 
    }
    elseif($SourceFile -eq "Win2012R2"){
        Write-Host "$SourcePathKB2012R2 " -NoNewline -ForegroundColor Magenta
        $KB2012R2=(Get-Content $SourcePathKB2012R2)
        Write-Host $($KB2012R2[$MonthPlus1]) 
    }
    elseif($SourceFile -eq "Win2012"){
        Write-Host "$SourcePathKB2012 " -NoNewline -ForegroundColor Magenta
        $KB2012=(Get-Content $SourcePathKB2012)
        Write-Host $($KB2012[$MonthPlus1]) 
    }
}

$NeedToPatchOS=$null
$UpdateSource=$null