Y=$(date +%Y)
M=$(date +%m)
D=$(date +%d)

Ym=$Y-$M
Ymd=$Y-$M-$D
GitRepo="git_commit_crontab"

HomeDir="/Users/freemjlab"
GitDir="$HomeDir/$GitRepo"
FileDir="$HomeDir/$GitRepo/$Ym"
FileName="$Ymd".py

mkdir -p $FileDir

echo " print("TODAY IS $Ymd ! Happy Coding! ") " >> $FileDir/$FileName

cd $GitDir
git add .
git commit -m '$FileName commit'
git push origin master
