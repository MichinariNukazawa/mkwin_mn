@echo off
::
:: @author michinari.nukazawa@gmail.com / project daisy bell
:: @license public domain
::
:: @memo: "IF EXIST" and "mkdir" can use unix path ('/')
:: @memo: mkdir" can not use %ERRORLEVEL%
::		 (return 0 on not directory maked.)

setlocal enabledelayedexpansion

for %%d in (%*) do (
	IF EXIST "%%~d" (
		echo NM: already exist.
	) ELSE (
		echo NM: not exist.
		mkdir "%%~d"
		IF NOT EXIST "%%~d" ( exit \b 1 )
	)

)

endlocal

exit /b 0
