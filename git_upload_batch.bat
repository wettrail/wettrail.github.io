@echo off
echo Pushing local repository to GitHub...

@echo off

REM Change the directory to your Git repository
cd "C:\Users\Kyle\Documents\database_geog655\FME_Trail_Rain\Web\wettrail.github.io"

REM Add the files to the staging area
git add .

REM Commit the changes with a custom message
git commit -m "batch_commit _ table update2"

REM Push the changes to the remote repository
git push origin main
