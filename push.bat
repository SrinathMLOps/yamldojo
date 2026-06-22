@echo off
REM Usage: push.bat https://github.com/<you>/<repo>.git

if "%~1"=="" (
  echo Usage: push.bat ^<your-github-repo-url^>
  echo Example: push.bat https://github.com/yourname/yaml-dojo.git
  echo.
  echo Create an empty repo on github.com first ^(no README/.gitignore^),
  echo then copy its URL and pass it here.
  exit /b 1
)

if not exist ".git" (
  echo Initializing git repo...
  git init
)

git add .
git commit -m "Add YAML Dojo practice tool"

git remote remove origin 2>nul
git remote add origin %1
git branch -M main
git push -u origin main

echo.
echo Pushed! Now go to your repo on GitHub:
echo   Settings - Pages - Source - Deploy from a branch - main / (root) - Save
echo Your practice bench will be live at the URL shown there in a minute or two.
