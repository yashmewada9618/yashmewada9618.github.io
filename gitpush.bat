set /p commitflg="Enter Commit flag: ": 
git init
git add .
git commit -m "%commitflg%"
git push