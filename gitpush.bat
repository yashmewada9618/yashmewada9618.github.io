set /p commitflg="Enter Commit flag": 
echo %commitflg%
echo "%commitflg%"
git init
git add .
git commit -m "%commitflg%"