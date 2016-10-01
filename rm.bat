@echo off
::
:: @author michinari.nukazawa@gmail.com / project daisy bell
:: @license public domain
::
::
:: @memo nothing target is exit success.
:: @memo "-r" argument or "-r" file is not check.
:: 	(use case "$(RM) -r directory" not checked)

setlocal enabledelayedexpansion

REM foreach argument in arguments
for %%a in (%*) do (
	set arg=%%~a
	set "arg=!arg:/=\!"

	REM foreach target in path
	REM expand a wildcard, or otherwise just hand arg
	REM "/R" option is target to fullpath
	for /R %%c in ("!arg!") do (
		IF EXIST "%%~c" (
			IF EXIST "%%~c\" (
				REM if directory
				echo "MN: dir:'%%~c'"
				rmdir /S /Q "%%~c"
				IF EXIST "%%~c" ( exit \b 1 )
			) ELSE (
				echo "MN: file:'%%~c'"
				del /F /S /Q "%%~c"
				IF EXIST "%%~c" ( exit \b 1 )
			)
		) ELSE (
			REM echo "NM: not exist:'%%~c'"
		)
	)
)

endlocal
