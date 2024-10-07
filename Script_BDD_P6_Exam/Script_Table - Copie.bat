@echo off
SETLOCAL

:: Variables pour la connexion SQL
SET SERVERNAME=localhost\SQLEXPRESS
SET DATABASE=P6_NexaWorks_BDDTESTINT
SET SCRIPTDIR=%~dp0

:: Création de la table de données si elle n'existe pas
sqlcmd -S %SERVERNAME% -d master -E -Q "IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'%DATABASE%') BEGIN CREATE DATABASE [%DATABASE%]; END"

:: Boucle pour exécuter tous les fichiers SQL dans le répertoire
FOR %%G IN ("%SCRIPTDIR%\*.sql") DO (
    echo Exécution du script %%~nxG...
    sqlcmd -S %SERVERNAME% -d %DATABASE% -E -i "%%G"
    IF %ERRORLEVEL% NEQ 0 (
        echo Erreur d'exécution du script %%~nxG
	pause
        exit /b 1
    )
)

echo Tous les scripts ont été éxécutés avec succès.

ENDLOCAL
pause