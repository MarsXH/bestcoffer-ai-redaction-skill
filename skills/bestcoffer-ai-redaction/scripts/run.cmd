@echo off
setlocal
cd /d "%~dp0\.."
if not exist "dist\index.js" (
  echo dist\index.js was not found. Build the skill before packaging. 1>&2
  exit /b 1
)
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js was not found. This skill requires Node.js ^>= 18 to run. 1>&2
  exit /b 1
)
node dist\index.js %*
