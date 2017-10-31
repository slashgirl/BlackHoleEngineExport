path=%path%;C:\Windows\system32;C:\Windows\SysWOW64
set realbimdir=%~dp0
regsvr32 "%realbimdir%\bin\RealBimOcx.ocx"


@set PATH=%~dp0bin\VCEnv\;%PATH%
:: %~dp0bin\VCEnv\editbin.exe /LARGEADDRESSAWARE "C:\Program Files (x86)\Internet Explorer\iexplore.exe"
copy /y "C:\Program Files (x86)\Internet Explorer\iexplore.exe" "%~dp0iexplore_hack.exe"
"%~dp0bin\VCEnv\editbin.exe" /LARGEADDRESSAWARE "%~dp0iexplore_hack.exe"

takeown /F "C:\Program Files (x86)\Internet Explorer\iexplore.exe" /A
icacls "C:\Program Files (x86)\Internet Explorer\iexplore.exe" /grant "Administrators":(F) /t /c

copy /y "%~dp0iexplore_hack.exe" "C:\Program Files (x86)\Internet Explorer\iexplore.exe"
del /f "%~dp0iexplore_hack.exe"

:: @pause