IF EXIST Nero-*_???_*.exe (
	FOR /f %%i in ('dir /b Nero-*_???_*.exe') DO (
		set nero_setup=%%~ni
		CALL :extract
	)
) ELSE (
	ECHO Error: Could not detect Nero version!
	ECHO.
	PAUSE
	EXIT
)
GOTO :EOF

:extract
:: get nero version
if %nero_setup:~-6% == update (
	set neroversion=%nero_setup:~5,-11%
) else (
	if %nero_setup:~-5% == trial (
		set neroversion=%nero_setup:~5,-10%
	)
)
GOTO :EOF