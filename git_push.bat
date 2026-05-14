@echo off
setlocal
set commit_msg=%~1

if "%commit_msg%"=="" (
    set /p commit_msg="Inserisci il messaggio di commit: "
)

if "%commit_msg%"=="" (
    echo Errore: Messaggio di commit vuoto.
    pause
    exit /b 1
)

echo --- Aggiunta file ---
"C:\Program Files\Git\cmd\git.exe" add .

echo --- Commit in corso ---
"C:\Program Files\Git\cmd\git.exe" commit -m "%commit_msg%"

echo --- Push sul repository ---
"C:\Program Files\Git\cmd\git.exe" push

echo --- Operazione completata! ---
pause
