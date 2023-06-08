@echo off
echo Pushing local repository to GitHub...
echo.

setlocal

rem Set your local repository path
set "localRepoPath=C:\Users\Kyle\Documents\database_geog655\FME_Trail_Rain\Web\wettrail.github.io"

rem Set your GitHub repository URL
set "githubRepoURL=https://github.com/wettrail/wettrail.github.io.git"

rem Set your GitHub username and access token (or password)
set "githubUsername=wettrail"
set "githubAccessToken=flr6washGH"

rem Change to the local repository directory
cd /d "%localRepoPath%"

rem Initialize Git repository if not already done
if not exist ".git" (
    git init
)

rem Add all files to the Git repository
git add .

rem Commit the changes
git commit -m "updated tables from batch"

rem Set the GitHub repository as the remote origin
git remote add origin %githubRepoURL%

rem Push the local repository to the GitHub repository
git push -u main

endlocal

echo.
echo Local repository pushed to GitHub successfully.
pause
