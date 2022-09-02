@Echo OFF
set /a _Debug=0
@Echo OFF
@if not defined USER for /f "tokens=2" %%s in ('whoami /user /fo list') do set "USER=%%s">nul
@set "_=set USER=%USER%&&call "%~f0" %*"&reg query HKU\S-1-5-19>nul 2>nul||(
@powershell -nop -c "start -verb RunAs cmd -args '/d/x/q/r',$env:_"&exit)


Echo:
CALL :ScriptEndTaks
CALL :ScriptMain
CALL :ScriptExit

goto :eof



:ScriptEndTaks
Echo:
taskkill /IM "IDMan.exe" /F
taskkill /IM "IEMonitor.exe" /F
taskkill /IM "IDMGrHlp.exe" /F
taskkill /IM "idmBroker.exe" /F
taskkill /IM "IDMIntegrator64.exe" /F
taskkill /IM "IDMMsgHost.exe" /F
taskkill /IM "MediumILStart.exe" /F

Echo:
DEL "%Temp%\*~DF*.TMP" /Q /S /F

Echo:
Exit /b



:ScriptMain
set "nul=1>nul 2>nul"
setlocal EnableDelayedExpansion

for %%# in (
"HKLM\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}"
"HKLM\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}"
"HKLM\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}"
"HKLM\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}"
"HKLM\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}"
"HKLM\Software\Classes\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}"
"HKLM\Software\Classes\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}"
"HKLM\Software\Classes\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}"
"HKLM\Software\Classes\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}"
"HKLM\Software\Classes\Wow6432Node\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}"
"HKLM\SOFTWARE\Classes\IDMan.CIDMLinkTransmitter"
"HKLM\SOFTWARE\Classes\idmBroker.OptionsReader"
"HKLM\SOFTWARE\Classes\idmBroker.OptionsReader1"
"HKCR\SOFTWARE\IDMan.CIDMLinkTransmitter"
"HKCR\SOFTWARE\idmBroker.OptionsReader"
"HKCR\SOFTWARE\idmBroker.OptionsReader1"
"HKCR\IDMan.CIDMLinkTransmitter"
"HKCR\idmBroker.OptionsReader"
"HKCR\idmBroker.OptionsReader1"
"HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup\IDMColors"
"HKLM\SYSTEM\CurrentControlSet\Services\nvlddmkm\Global\Startup\IDMInitialize"
"HKLM\SYSTEM\CurrentControlSet\Services\IDMWFP"
"HKCU\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}"
"HKCU\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}"
"HKCU\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}"
"HKCU\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}"
"HKCU\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}"
"HKCU\Software\Classes\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}"
"HKCU\Software\Classes\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}"
"HKCU\Software\Classes\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}"
"HKCU\Software\Classes\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}"
"HKCU\Software\Classes\Wow6432Node\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}"
"HKU\.DEFAULT\Software\Classes\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}"
"HKU\.DEFAULT\Software\Classes\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}"
"HKU\.DEFAULT\Software\Classes\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}"
"HKU\.DEFAULT\Software\Classes\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}"
"HKU\.DEFAULT\Software\Classes\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}"
"HKU\.DEFAULT\Software\Classes\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}"
"HKU\.DEFAULT\Software\Classes\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}"
"HKU\.DEFAULT\Software\Classes\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}"
"HKU\.DEFAULT\Software\Classes\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{7B8E9164-324D-4A2E-A46D-0165FB2000EC}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{6DDF00DB-1234-46EC-8356-27E7B2051192}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{D5B91409-A8CA-4973-9A0B-59F713D25671}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{5ED60779-4DE2-4E07-B862-974CA4FF2E9C}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{07999AC3-058B-40BF-984F-69EB1E554CA7}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{E8CF4E59-B7A3-41F2-86C7-82B03334F22A}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{9C9D53D4-A978-43FC-93E2-1C21B529E6D7}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{79873CC5-3951-43ED-BDF9-D8759474B6FD}"
"HKU\.DEFAULT\Software\Classes\Wow6432Node\CLSID\{E6871B76-C3C8-44DD-B947-ABFFE144860D}"
"HKLM\Software\Internet Download Manager"
"HKLM\Software\Wow6432Node\Internet Download Manager"
"HKLM\Software\Download Manager"
"HKLM\Software\Wow6432Node\Download Manager"
"HKLM\Software\DownloadManager"
"HKLM\Software\Wow6432Node\DownloadManager"
"HKCU\Software\Download Manager"
"HKCU\Software\Wow6432Node\Download Manager"
"HKCU\Software\Wow6432Node\DownloadManager"
"HKU\.DEFAULT\Software\Download Manager"
"HKU\.DEFAULT\Software\Wow6432Node\Download Manager"
"HKU\.DEFAULT\Software\DownloadManager"
"HKU\.DEFAULT\Software\Wow6432Node\DownloadManager"
) do for /f "tokens=* delims=" %%A in ("%%#") do (
set "reg=%%#" &CALL :DELETE
)

Echo: 
Exit /b



:DELETE

REG DELETE %reg% /f %nul%

if [%errorlevel%]==[0] (
set "status=powershell write-host 'Deleted ' -fore '"Green"' -NoNewline; write-host '""%reg%""' -fore '"White"'"
) else (
set "status=echo Not found %reg%"
)

reg query %reg% %nul%

if [%errorlevel%]==[0] (
set "status=powershell write-host 'Deleted by taking ownership ' -fore '"Yellow"' -NoNewline; write-host '""%reg%""' -fore '"White"'"
%nul% CALL :reg_takeownership "%reg%" "ReadPermissions, ReadKey" Allow %USER%
%nul% CALL :reg_takeownership "%reg%" "SetValue, Delete" Deny S-1-5-32-544 S-1-5-18

for /f "tokens=2 delims=:" %%s in ('sc showsid TrustedInstaller ^|findstr "S-1"') do set TI=%%s& call set TI=%%TI: =%%
%nul% CALL :reg_takeownership "%reg%" FullControl Allow S-1-5-32-544 %TI%
REG DELETE %reg% /f %nul%
)

reg query %reg% %nul%

if [%errorlevel%]==[0] (
powershell write-host 'Failed to delete ' -fore '"Red"' -NoNewline; write-host '""%reg%""' -fore '"White"'
) else (
%status%
)
Exit /b
:ScriptExit
@pause
@exit
